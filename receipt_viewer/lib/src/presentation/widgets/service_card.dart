import 'package:flutter/material.dart';
import 'package:receiptviewer/receiptviewer.dart';
import 'package:receiptviewer/src/presentation/widgets/field.dart';
import 'package:receiptviewer/src/presentation/widgets/url_validation.dart';
import 'package:receiptviewer/src/presentation/widgets/utils.dart';

class ServiceCard extends StatelessWidget {

    final ReceiptViewerMessages _messages;
    final PrivacyPolicyService _service;
    final ReceiptViewerActionCallback onAction;

    const ServiceCard(this._service, this._messages, {
        @required this.onAction
    });

    @override
    Widget build(BuildContext context) {

        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Divider(color: Colors.white),
                Field(name: _messages.service_title, value: _service.service),
                Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Column(
                        children: <Widget>[
                            for (final purpose in _service.purposes)
                                Field(
                                    name: _messages.purpose,
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
        return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Field(
                        name: _messages.purpose,
                        value: purpose.purpose
                    ),
                    Field(
                        name: _messages.purpose_piiCategory,
                        value: purpose.piiCategory
                    ),
                    Field(
                        name: _messages.purpose_purposeCategory,
                        value: purpose.purposeCategory
                    ),
                    Field(
                        name: _messages.purpose_termination,
                        value: purpose.termination,
                        trailing: _terminationWidget(purpose),
                    ),
                    Field(
                        name: _messages.purpose_consentType,
                        value: purpose.consentType
                    ),
                    Field(
                        name: _messages.purpose_primary,
                        value: (purpose.primaryPurpose ?? false) ?
                            _messages.purpose_primary_yes :
                            _messages.purpose_primary_no
                    ),
                    if (purpose.thirdPartyDisclosure ?? false)
                        Field(
                            name: _messages.purpose_third_party,
                            value: purpose.thirdPartyName
                        )
                ],
            ),
        );
    }

    Widget _terminationWidget(PrivacyPolicyServicePurpose purpose) {
        if (isUrlValid(purpose.termination)) {
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