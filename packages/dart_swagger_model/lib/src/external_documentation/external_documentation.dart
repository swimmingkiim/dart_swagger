import 'package:json_annotation/json_annotation.dart';

part 'external_documentation.g.dart';

@JsonSerializable()
class ExternalDocumentation {
  final String url;
  String? description;

  ExternalDocumentation({
    required this.url,
    this.description,
  });

  factory ExternalDocumentation.fromJson(Map<String, dynamic> json) =>
      _$ExternalDocumentationFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalDocumentationToJson(this);

  static Map<String, dynamic>? externalDocumentationToJson(
          ExternalDocumentation? externalDocumentation) =>
      externalDocumentation?.toJson();
}
