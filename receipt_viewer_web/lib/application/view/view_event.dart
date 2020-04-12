part of 'view_bloc.dart';

@freezed
abstract class ViewEvent with _$ViewEvent {

    const factory ViewEvent.init() = _Init;

    const factory ViewEvent.reportError() = _ReportError;

    const factory ViewEvent.processAction(ReceiptViewerAction action) = _ProcessAction;
}