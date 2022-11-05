import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/info/contact/contact.dart';
import 'package:dart_swagger_model/src/info/license/license.dart';

part 'info.g.dart';

@JsonSerializable()
class Info {
  final String title;
  final String version;
  String? description;
  String? termsOfService;
  @JsonKey(toJson: contactToJson)
  Contact? contact;
  @JsonKey(toJson: licenseToJson)
  License? license;

  Info({
    required this.title,
    required this.version,
    this.description,
    this.termsOfService,
    this.contact,
    this.license,
  });

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);
  static Map<String, dynamic>? contactToJson(Contact? contact) =>
      contact?.toJson();
  static Map<String, dynamic>? licenseToJson(License? license) =>
      license?.toJson();
}
