part of 'domain.dart';

@freezed
abstract class ReceiptViewerAction with _$ReceiptViewerAction {

    const factory ReceiptViewerAction.sendEmail(PiiController controller) = _SendEmail;
    const factory ReceiptViewerAction.call(PiiController controller) = _Call;
    const factory ReceiptViewerAction.addContact(PiiController controller) = _AddContact;
    const factory ReceiptViewerAction.visitWeb(PiiController controller) = _VisitWeb;
    const factory ReceiptViewerAction.goToTermination(PrivacyPolicyServicePurpose purpose) = _GoToTermination;
    const factory ReceiptViewerAction.goToPrivacyPolicy() = _GoToPrivacyPolicy;

}