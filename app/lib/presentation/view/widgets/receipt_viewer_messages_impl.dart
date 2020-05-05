import 'package:content_wallet/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:receiptviewer/receiptviewer.dart';

class ReceiptViewerMessagesImpl extends ReceiptViewerMessages {

    final BuildContext _context;

    ReceiptViewerMessagesImpl(this._context);

    String get piiPrincipalId => S.of(_context).piiPrincipalId;

    String get consentReceiptID => S.of(_context).consentReceiptID;

    String get language => S.of(_context).language;

    String get jurisdiction => S.of(_context).jurisdiction;

    String get policyUrl => S.of(_context).policyUrl;

    String get consentTimestamp => S.of(_context).consentTimestamp;

    String get spiCat => S.of(_context).spiCat;

    String get piiController => S.of(_context).piiController;

    String get contact => S.of(_context).contact;

    String get org => S.of(_context).org;

    String get url => S.of(_context).url;

    String get onBehalf => S.of(_context).onBehalf;

    String get onBehalf_yes => S.of(_context).onBehalf_yes;

    String get onBehalf_no => S.of(_context).onBehalf_no;

    String get address => S.of(_context).address;

    String get phone => S.of(_context).phone;

    String get email => S.of(_context).email;

    String get service_title => S.of(_context).service_title;

    String address_postal_code_and_locality(String postalCode, String locality) =>
        S.of(_context).address_postal_code_and_locality(postalCode, locality);

    String address_region_and_country(String region, String country) =>
        S.of(_context).address_region_and_country(region, country);

    String get purpose => S.of(_context).purpose;

    String get purpose_piiCategory => S.of(_context).purpose_piiCategory;

    String get purpose_purposeCategory => S.of(_context).purpose_purposeCategory;

    String get purpose_termination => S.of(_context).purpose_termination;

    String get purpose_third_party => S.of(_context).purpose_third_party;

    String get purpose_consentType => S.of(_context).purpose_consentType;

    String get purpose_primary => S.of(_context).purpose_primary;

    String get purpose_primary_yes => S.of(_context).purpose_primary_yes;

    String get purpose_primary_no => S.of(_context).purpose_primary_no;
}