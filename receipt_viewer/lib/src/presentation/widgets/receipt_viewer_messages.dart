abstract class ReceiptViewerMessages {

    String get piiPrincipalId;
    String get consentReceiptID;
    String get language;
    String get jurisdiction;
    String get policyUrl;
    String get consentTimestamp;
    String get spiCat;
    String get piiController;
    String get contact;
    String get org;
    String get url;
    String get onBehalf;
    String get onBehalf_yes;
    String get onBehalf_no;
    String get address;
    String get phone;
    String get email;
    String get service_title;
    String address_postal_code_and_locality(String postalCode, String locality);
    String address_region_and_country(String region, String country);
    String get purpose;
    String get purpose_piiCategory;
    String get purpose_purposeCategory;
    String get purpose_termination;
    String get purpose_third_party;
    String get purpose_consentType;
    String get purpose_primary;
    String get purpose_primary_yes;
    String get purpose_primary_no;
}