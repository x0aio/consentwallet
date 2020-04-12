part of 'view_bloc.dart';

@freezed
abstract class ViewEvent with _$ViewEvent {

    const factory ViewEvent.init() = _Init;

    const factory ViewEvent.reportError() = _ReportError;

    const factory ViewEvent.save() = _Save;

    const factory ViewEvent.share() = _Share;

    const factory ViewEvent.viewerAction(ReceiptViewerAction action) = _ViewerAction;

    const factory ViewEvent.delete() = _Delete;
}