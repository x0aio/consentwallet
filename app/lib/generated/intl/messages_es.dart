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

  static m2(version) => "Versión ${version}";

  static m3(dateTime) => "${dateTime}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "address" : MessageLookupByLibrary.simpleMessage("Dirección"),
    "consentReceiptID" : MessageLookupByLibrary.simpleMessage("Número de recibo"),
    "consentTimestamp" : MessageLookupByLibrary.simpleMessage("Fecha"),
    "contact" : MessageLookupByLibrary.simpleMessage("Contacto"),
    "drawer_about" : m2,
    "drawer_conditions" : MessageLookupByLibrary.simpleMessage("Términos y condiciones"),
    "drawer_privacy_policy" : MessageLookupByLibrary.simpleMessage("Política de privacidad"),
    "drawer_specification" : MessageLookupByLibrary.simpleMessage("Especificación Consent Receipt"),
    "email" : MessageLookupByLibrary.simpleMessage("Email"),
    "home_open" : MessageLookupByLibrary.simpleMessage("Abrir un archivo..."),
    "home_stored_token_consentTimestamp" : m3,
    "home_title" : MessageLookupByLibrary.simpleMessage("Recibos"),
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
    "search_message" : MessageLookupByLibrary.simpleMessage("Por construir"),
    "search_title" : MessageLookupByLibrary.simpleMessage("Búsqueda de recibos"),
    "service_title" : MessageLookupByLibrary.simpleMessage("Servicio"),
    "spiCat" : MessageLookupByLibrary.simpleMessage("Inofrmación sensible"),
    "timestamp_format" : MessageLookupByLibrary.simpleMessage("dd-MM-yyyy HH:mm:ss"),
    "url" : MessageLookupByLibrary.simpleMessage("Sitio web"),
    "view_confirm_delete_cancel" : MessageLookupByLibrary.simpleMessage("Cancelar"),
    "view_confirm_delete_content" : MessageLookupByLibrary.simpleMessage("Estás seguro de querer eliminar el recibo?"),
    "view_confirm_delete_ok" : MessageLookupByLibrary.simpleMessage("Ok"),
    "view_confirm_delete_title" : MessageLookupByLibrary.simpleMessage("Elimina el recibo"),
    "view_delete" : MessageLookupByLibrary.simpleMessage("Elimina el recibo"),
    "view_invalid_token" : MessageLookupByLibrary.simpleMessage("Este recibo de consentimiento es inválido"),
    "view_notify_error" : MessageLookupByLibrary.simpleMessage("Notificar el error"),
    "view_save" : MessageLookupByLibrary.simpleMessage("Guarda el recibo"),
    "view_share" : MessageLookupByLibrary.simpleMessage("Compartir recibo"),
    "view_title" : MessageLookupByLibrary.simpleMessage("Recibo"),
    "welcome_continue" : MessageLookupByLibrary.simpleMessage("Continuar"),
    "welcome_first_sentence" : MessageLookupByLibrary.simpleMessage("Tus datos se mantendrán encriptados y protegidos en tu terminal."),
    "welcome_second_sentence" : MessageLookupByLibrary.simpleMessage("No existe copia de respaldo en nuestros servidores."),
    "welcome_third_sentence" : MessageLookupByLibrary.simpleMessage("Si eliminas la aplicación perderás tu información"),
    "welcome_title" : MessageLookupByLibrary.simpleMessage("Bienvenido :-)")
  };
}
