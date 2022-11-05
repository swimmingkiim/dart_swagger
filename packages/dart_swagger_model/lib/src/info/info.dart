import 'package:dart_swagger_model/src/info/license/license.dart';
import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/info/contact/contact.dart';

part 'info.g.dart';

@JsonSerializable()
class Info {
  final String title;
  final String version;
  String? description;
  String? termsOfService;
  Contact? contact;
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
}