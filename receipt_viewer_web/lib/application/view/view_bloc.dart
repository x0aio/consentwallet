import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:receiptviewer/receiptviewer.dart';
import 'package:receiptviewerweb/application/view/view_navigator.dart';

part 'view_event.dart';
part 'view_bloc.freezed.dart';
part 'view_state.dart';

class ViewBloc extends Bloc<ViewEvent, ViewState> {

    final ViewNavigator _navigator;
    final String token;

    ViewBloc(this._navigator, { this.token });

    @override
    ViewState get initialState => const ViewState.loading();

    @override
    Stream<ViewState> mapEventToState(ViewEvent event) async* {
        yield* event.when(
            init: _init,
            reportError: _reportError,
            processAction: _processAction
        );
    }

    Stream<ViewState> _init() async* {
        try {
            final receipt = ConsentReceipt.fromJWT(token);

            yield ViewState.ready(
                token: token,
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
                _navigator.reportErrorAndBack(
                    error: state.error,
                    token: state.token,
                    stackTrace: state.stackTrace
                );
            },
            orElse: () {
                throw "Invalid state for reportError $state";
            }
        );
    }

    Stream<ViewState> _processAction(ReceiptViewerAction action) async* {
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
                throw "Invalid state for reportError $state";
            }
        );
    }
}