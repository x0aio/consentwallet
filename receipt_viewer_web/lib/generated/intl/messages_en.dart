// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(postalCode, locality) => "${postalCode} ${locality}";

  static m1(region, country) => "${region} ${country}";

  static m2(version) => "Version \$${version}";

  static m3(error, token) => "Hi, I need some help with this error: ${error}\n\ntoken: ${token}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "address" : MessageLookupByLibrary.simpleMessage("Address"),
    "address_postal_code_and_locality" : m0,
    "address_region_and_country" : m1,
    "consentReceiptID" : MessageLookupByLibrary.simpleMessage("Receipt Number"),
    "consentTimestamp" : MessageLookupByLibrary.simpleMessage("Date"),
    "contact" : MessageLookupByLibrary.simpleMessage("Contact"),
    "drawer_about" : m2,
    "drawer_conditions" : MessageLookupByLibrary.simpleMessage("Terms & Conditions"),
    "drawer_privacy_policy" : MessageLookupByLibrary.simpleMessage("Privacy Policy"),
    "drawer_specification" : MessageLookupByLibrary.simpleMessage("Consent Receipt Specification"),
    "email" : MessageLookupByLibrary.simpleMessage("Email"),
    "error_email_body" : m3,
    "error_email_subject" : MessageLookupByLibrary.simpleMessage("I have found an error"),
    "home_message_info" : MessageLookupByLibrary.simpleMessage("You can view your consent receipts in this viewer"),
    "home_open_file" : MessageLookupByLibrary.simpleMessage("Open a file..."),
    "home_title" : MessageLookupByLibrary.simpleMessage("Consent Receipt Viewer"),
    "home_warning_message" : MessageLookupByLibrary.simpleMessage("Your information is safe, it will not leave your browser"),
    "jurisdiction" : MessageLookupByLibrary.simpleMessage("Jurisdiction"),
    "language" : MessageLookupByLibrary.simpleMessage("Language"),
    "onBehalf" : MessageLookupByLibrary.simpleMessage("On behalf"),
    "onBehalf_no" : MessageLookupByLibrary.simpleMessage("NO"),
    "onBehalf_yes" : MessageLookupByLibrary.simpleMessage("YES"),
    "org" : MessageLookupByLibrary.simpleMessage("Organization"),
    "phone" : MessageLookupByLibrary.simpleMessage("Phone"),
    "piiController" : MessageLookupByLibrary.simpleMessage("Personal Information Controller"),
    "piiPrincipalId" : MessageLookupByLibrary.simpleMessage("Personal identifier"),
    "policyUrl" : MessageLookupByLibrary.simpleMessage("Privacy Policy"),
    "purpose" : MessageLookupByLibrary.simpleMessage("Purpose"),
    "purpose_consentType" : MessageLookupByLibrary.simpleMessage("Consent Type"),
    "purpose_piiCategory" : MessageLookupByLibrary.simpleMessage("Personal information categories"),
    "purpose_primary" : MessageLookupByLibrary.simpleMessage("Primary purpose"),
    "purpose_primary_no" : MessageLookupByLibrary.simpleMessage("NO"),
    "purpose_primary_yes" : MessageLookupByLibrary.simpleMessage("YES"),
    "purpose_purposeCategory" : MessageLookupByLibrary.simpleMessage("Purpose categories"),
    "purpose_termination" : MessageLookupByLibrary.simpleMessage("Termination"),
    "purpose_third_party" : MessageLookupByLibrary.simpleMessage("Third party"),
    "service_title" : MessageLookupByLibrary.simpleMessage("Service"),
    "spiCat" : MessageLookupByLibrary.simpleMessage("Sensitive info"),
    "timestamp_format" : MessageLookupByLibrary.simpleMessage("yyyy-MM-dd HH:mm:ss"),
    "url" : MessageLookupByLibrary.simpleMessage("Web site"),
    "view_invalid_token" : MessageLookupByLibrary.simpleMessage("Consent Receipt invalid"),
    "view_notify_error" : MessageLookupByLibrary.simpleMessage("Notify error"),
    "view_title" : MessageLookupByLibrary.simpleMessage("Consent Receipt")
  };
}
