// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static m2(version) => "Versión \$${version}";

  static m3(error, token) => "Hola, necesito ayuda con este error: ${error}\n\ntoken: ${token}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "address" : MessageLookupByLibrary.simpleMessage("Dirección"),
    "consentReceiptID" : MessageLookupByLibrary.simpleMessage("Número de recibo"),
    "consentTimestamp" : MessageLookupByLibrary.simpleMessage("Fecha"),
    "contact" : MessageLookupByLibrary.simpleMessage("Contacto"),
    "drawer_about" : m2,
    "drawer_conditions" : MessageLookupByLibrary.simpleMessage("Terminos y condiciones"),
    "drawer_privacy_policy" : MessageLookupByLibrary.simpleMessage("Política de privacidad"),
    "drawer_specification" : MessageLookupByLibrary.simpleMessage("Consent Receipt Specification"),
    "email" : MessageLookupByLibrary.simpleMessage("Email"),
    "error_email_body" : m3,
    "error_email_subject" : MessageLookupByLibrary.simpleMessage("He encontrado un error"),
    "home_message_info" : MessageLookupByLibrary.simpleMessage("Puedes ver tus recibos de consentimiento en este visor"),
    "home_open_file" : MessageLookupByLibrary.simpleMessage("Abrir un fichero..."),
    "home_title" : MessageLookupByLibrary.simpleMessage("Consent Receipt Viewer"),
    "home_warning_message" : MessageLookupByLibrary.simpleMessage("Tu información esta seguro, no saldrá de tu navegador"),
    "jurisdiction" : MessageLookupByLibrary.simpleMessage("Jurisdicción"),
    "language" : MessageLookupByLibrary.simpleMessage("Idioma"),
    "onBehalf" : MessageLookupByLibrary.simpleMessage("En representación"),
    "onBehalf_no" : MessageLookupByLibrary.simpleMessage("No"),
    "onBehalf_yes" : MessageLookupByLibrary.simpleMessage("Si"),
    "org" : MessageLookupByLibrary.simpleMessage("Empresa"),
    "phone" : MessageLookupByLibrary.simpleMessage("Teléfono"),
    "piiController" : MessageLookupByLibrary.simpleMessage("Controlador de información personal"),
    "piiPrincipalId" : MessageLookupByLibrary.simpleMessage("Identificador personal"),
    "policyUrl" : MessageLookupByLibrary.simpleMessage("Política de privacidad"),
    "purpose" : MessageLookupByLibrary.simpleMessage("Propósito"),
    "purpose_consentType" : MessageLookupByLibrary.simpleMessage("Tipo de consentimiento"),
    "purpose_piiCategory" : MessageLookupByLibrary.simpleMessage("Categoría de información personal"),
    "purpose_primary" : MessageLookupByLibrary.simpleMessage("Propósito primario"),
    "purpose_primary_no" : MessageLookupByLibrary.simpleMessage("No"),
    "purpose_primary_yes" : MessageLookupByLibrary.simpleMessage("Si"),
    "purpose_purposeCategory" : MessageLookupByLibrary.simpleMessage("Categoría de propósito"),
    "purpose_termination" : MessageLookupByLibrary.simpleMessage("Finalización"),
    "purpose_third_party" : MessageLookupByLibrary.simpleMessage("Tercero"),
    "service_title" : MessageLookupByLibrary.simpleMessage("Servicio"),
    "spiCat" : MessageLookupByLibrary.simpleMessage("Inofrmación sensible"),
    "timestamp_format" : MessageLookupByLibrary.simpleMessage("yyyy-MM-dd HH:mm:ss"),
    "url" : MessageLookupByLibrary.simpleMessage("Sitio web"),
    "view_invalid_token" : MessageLookupByLibrary.simpleMessage("Recibo de consentimiento inválido"),
    "view_notify_error" : MessageLookupByLibrary.simpleMessage("Notifica el error"),
    "view_title" : MessageLookupByLibrary.simpleMessage("Recibo de consentimiento")
  };
}
