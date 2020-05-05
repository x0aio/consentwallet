// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

class S {
  S();
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final String name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return S();
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  String get timestamp_format {
    return Intl.message(
      'yyyy-MM-dd HH:mm:ss',
      name: 'timestamp_format',
      desc: '',
      args: [],
    );
  }

  String get drawer_privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'drawer_privacy_policy',
      desc: '',
      args: [],
    );
  }

  String get drawer_conditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'drawer_conditions',
      desc: '',
      args: [],
    );
  }

  String drawer_about(Object version) {
    return Intl.message(
      'Version \$$version',
      name: 'drawer_about',
      desc: '',
      args: [version],
    );
  }

  String get drawer_specification {
    return Intl.message(
      'Consent Receipt Specification',
      name: 'drawer_specification',
      desc: '',
      args: [],
    );
  }

  String get home_title {
    return Intl.message(
      'Consent Receipt Viewer',
      name: 'home_title',
      desc: '',
      args: [],
    );
  }

  String get home_message_info {
    return Intl.message(
      'You can view your consent receipts in this viewer',
      name: 'home_message_info',
      desc: '',
      args: [],
    );
  }

  String get home_open_file {
    return Intl.message(
      'Open a file...',
      name: 'home_open_file',
      desc: '',
      args: [],
    );
  }

  String get home_warning_message {
    return Intl.message(
      'Your information is safe, it will not leave your browser',
      name: 'home_warning_message',
      desc: '',
      args: [],
    );
  }

  String get view_title {
    return Intl.message(
      'Consent Receipt',
      name: 'view_title',
      desc: '',
      args: [],
    );
  }

  String get view_invalid_token {
    return Intl.message(
      'Consent Receipt invalid',
      name: 'view_invalid_token',
      desc: '',
      args: [],
    );
  }

  String get view_notify_error {
    return Intl.message(
      'Notify error',
      name: 'view_notify_error',
      desc: '',
      args: [],
    );
  }

  String get error_email_subject {
    return Intl.message(
      'I have found an error',
      name: 'error_email_subject',
      desc: '',
      args: [],
    );
  }

  String error_email_body(Object error, Object token) {
    return Intl.message(
      'Hi, I need some help with this error: $error\n\ntoken: $token',
      name: 'error_email_body',
      desc: '',
      args: [error, token],
    );
  }

  String get piiPrincipalId {
    return Intl.message(
      'Personal identifier',
      name: 'piiPrincipalId',
      desc: '',
      args: [],
    );
  }

  String get consentReceiptID {
    return Intl.message(
      'Receipt Number',
      name: 'consentReceiptID',
      desc: '',
      args: [],
    );
  }

  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  String get jurisdiction {
    return Intl.message(
      'Jurisdiction',
      name: 'jurisdiction',
      desc: '',
      args: [],
    );
  }

  String get policyUrl {
    return Intl.message(
      'Privacy Policy',
      name: 'policyUrl',
      desc: '',
      args: [],
    );
  }

  String get consentTimestamp {
    return Intl.message(
      'Date',
      name: 'consentTimestamp',
      desc: '',
      args: [],
    );
  }

  String get spiCat {
    return Intl.message(
      'Sensitive info',
      name: 'spiCat',
      desc: '',
      args: [],
    );
  }

  String get piiController {
    return Intl.message(
      'Personal Information Controller',
      name: 'piiController',
      desc: '',
      args: [],
    );
  }

  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  String get org {
    return Intl.message(
      'Organization',
      name: 'org',
      desc: '',
      args: [],
    );
  }

  String get url {
    return Intl.message(
      'Web site',
      name: 'url',
      desc: '',
      args: [],
    );
  }

  String get onBehalf {
    return Intl.message(
      'On behalf',
      name: 'onBehalf',
      desc: '',
      args: [],
    );
  }

  String get onBehalf_yes {
    return Intl.message(
      'YES',
      name: 'onBehalf_yes',
      desc: '',
      args: [],
    );
  }

  String get onBehalf_no {
    return Intl.message(
      'NO',
      name: 'onBehalf_no',
      desc: '',
      args: [],
    );
  }

  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  String get service_title {
    return Intl.message(
      'Service',
      name: 'service_title',
      desc: '',
      args: [],
    );
  }

  String address_postal_code_and_locality(Object postalCode, Object locality) {
    return Intl.message(
      '$postalCode $locality',
      name: 'address_postal_code_and_locality',
      desc: '',
      args: [postalCode, locality],
    );
  }

  String address_region_and_country(Object region, Object country) {
    return Intl.message(
      '$region $country',
      name: 'address_region_and_country',
      desc: '',
      args: [region, country],
    );
  }

  String get purpose {
    return Intl.message(
      'Purpose',
      name: 'purpose',
      desc: '',
      args: [],
    );
  }

  String get purpose_piiCategory {
    return Intl.message(
      'Personal information categories',
      name: 'purpose_piiCategory',
      desc: '',
      args: [],
    );
  }

  String get purpose_purposeCategory {
    return Intl.message(
      'Purpose categories',
      name: 'purpose_purposeCategory',
      desc: '',
      args: [],
    );
  }

  String get purpose_termination {
    return Intl.message(
      'Termination',
      name: 'purpose_termination',
      desc: '',
      args: [],
    );
  }

  String get purpose_third_party {
    return Intl.message(
      'Third party',
      name: 'purpose_third_party',
      desc: '',
      args: [],
    );
  }

  String get purpose_consentType {
    return Intl.message(
      'Consent Type',
      name: 'purpose_consentType',
      desc: '',
      args: [],
    );
  }

  String get purpose_primary {
    return Intl.message(
      'Primary purpose',
      name: 'purpose_primary',
      desc: '',
      args: [],
    );
  }

  String get purpose_primary_yes {
    return Intl.message(
      'YES',
      name: 'purpose_primary_yes',
      desc: '',
      args: [],
    );
  }

  String get purpose_primary_no {
    return Intl.message(
      'NO',
      name: 'purpose_primary_no',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}