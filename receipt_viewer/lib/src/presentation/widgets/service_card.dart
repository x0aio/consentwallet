import 'package:flutter/material.dart';
import 'package:receiptviewer/generated/i18n.dart';
import 'package:receiptviewer/receiptviewer.dart';
import 'package:receiptviewer/src/presentation/widgets/field.dart';
import 'package:receiptviewer/src/presentation/widgets/utils.dart';

class ServiceCard extends StatelessWidget {

    final PrivacyPolicyService _service;
    final ReceiptViewerActionCallback onAction;

    const ServiceCard(this._service, {
        @required this.onAction
    });

    @override
    Widget build(BuildContext context) {
        final texts = S.of(context);

        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Divider(color: Colors.white),
                Field(name: texts.service_title, value: _service.service),
                Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Column(
                        children: <Widget>[
                            for (final purpose in _service.purposes)
                                Field(
                                    name: texts.purpose,
                                    value: purpose.purpose,
                                    trailing: IconButton(
                                        icon: Icon(Icons.remove_red_eye),
                                        onPressed: () {
                                            showModalSheet(
                                                context: context,
                                                builder: (context) => _buildPurposeSheet(context, purpose)
                                            );
                                        },
                                    ),
                                )
                        ],
                    ),
                )
            ]
        );
    }

    Widget _buildPurposeSheet(BuildContext context, PrivacyPolicyServicePurpose purpose) {
        final texts = S.of(context);

        return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Field(
                        name: texts.purpose,
                        value: purpose.purpose
                    ),
                    Field(
                        name: texts.purpose_piiCategory,
                        value: purpose.piiCategory
                    ),
                    Field(
                        name: texts.purpose_purposeCategory,
                        value: purpose.purposeCategory
                    ),
                    Field(
                        name: texts.purpose_termination,
                        value: purpose.termination,
                        trailing: _terminationWidget(purpose),
                    ),
                    Field(
                        name: texts.purpose_consentType,
                        value: purpose.consentType
                    ),
                    Field(
                        name: texts.purpose_primary,
                        value: (purpose.primaryPurpose ?? false) ?
                            texts.purpose_primary_yes :
                            texts.purpose_primary_no
                    ),
                    if (purpose.thirdPartyDisclosure ?? false)
                        Field(
                            name: texts.purpose_third_party,
                            value: purpose.thirdPartyName
                        )
                ],
            ),
        );
    }

    Widget _terminationWidget(PrivacyPolicyServicePurpose purpose) {
        if (purpose.termination.startsWith("http")) {
            return IconButton(
                icon: const Icon(Icons.public),
                onPressed: () {
                    onAction(ReceiptViewerAction.goToTermination(purpose));
                },
            );
        }

        return null;
    }
}