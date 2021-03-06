import 'package:content_wallet/application/view/view_navigator.dart';
import 'package:content_wallet/domain/domain.dart';
import 'package:content_wallet/domain/stored_token_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:receiptviewer/receiptviewer.dart';

part 'view_event.dart';
part 'view_bloc.freezed.dart';
part 'view_state.dart';

class ViewBloc extends Bloc<ViewEvent, ViewState> {

    final ViewNavigator _navigator;
    final StoredTokenRepository _repository;
    final String token;

    ViewBloc(this._repository, this._navigator, { this.token });

    @override
    ViewState get initialState => const ViewState.loading();

    @override
    Stream<ViewState> mapEventToState(ViewEvent event) async* {
        yield* event.when(
            init: _init,
            reportError: _reportError,
            save: _save,
            delete: _delete,
            share: _share,
            viewerAction: _viewerAction
        );
    }

    Stream<ViewState> _init() async* {
        try {
            final receipt = ConsentReceipt.fromJWT(token);

            yield ViewState.ready(
                token: token,
                isSaved: await _repository.contains(receipt.consentReceiptID),
                receipt: receipt
            );
        } catch (e, stackTrace) {
            yield ViewState.invalid(
                token: token,
                error: e.toString(),
                stackTrace: stackTrace
            );
        }
    }

    Stream<ViewState> _reportError() async* {
        state.maybeMap(
            invalid: (state) async {
                await _navigator.reportError(
                    message: state.error,
                    token: state.token,
                    stackTrace: state.stackTrace
                );

                _navigator.backToRoot();
            },
            orElse: () {
                throw "Invalid state for reportError $state";
            }
        );
    }

    Stream<ViewState> _save() async* {
        yield* state.maybeMap(
            ready: (state) async* {
                _repository.add(StoredToken(
                    key: state.receipt.consentReceiptID,
                    principalController: state.receipt.controllers
                        .firstWhere((controller) => !controller.onBehalf)
                        .piiController,
                    token: state.token,
                    consentTimestamp: DateTime.fromMillisecondsSinceEpoch(state.receipt.consentTimestamp * 1000),
                    isDemo: false,
                    savedAt: DateTime.now()
                ));
                _navigator.backToRoot();
            },
            orElse: () {
                throw "Invalid state for sendByMail $state";
            }
        );
    }

    Stream<ViewState> _delete() async* {
        yield* state.maybeMap(
            ready: (state) async* {
                if (await _navigator.confirmDelete()) {
                    _repository.delete(state.receipt.consentReceiptID);
                    _navigator.backToRoot();
                } else {
                    yield state;
                }
            },
            orElse: () {
                throw "Invalid state for sendByMail $state";
              }
        );
    }

    Stream<ViewState> _share() async* {
        state.maybeMap(
            ready: (state) async {
                await _navigator.share(
                    id: state.receipt.consentReceiptID,
                    token: state.token
                );
            },
            orElse: () {
                throw "Invalid state for sendByMail $state";
            }
        );
    }

    Stream<ViewState> _viewerAction(ReceiptViewerAction action) async* {
        state.maybeMap(
            ready: (state) async {
                await action.when(
                    sendEmail: (controller) =>
                        _navigator.openUrl("mailto:${controller.email}")
                    ,
                    call: (controller) =>
                        _navigator.openUrl("tel:${controller.phone}")
                    ,
                    addContact: (controller) =>
                        Future.value(null)
                    ,
                    visitWeb: (controller) =>
                        _navigator.openUrl(controller.url)
                    ,
                    goToTermination: (purpose) =>
                        _navigator.openUrl(purpose.termination)
                    ,
                    goToPrivacyPolicy: () =>
                        _navigator.openUrl(state.receipt.policyUrl)
                    ,
                );
            },
            orElse: () {
                throw "Invalid state for sendByMail $state";
            }
        );
    }
}