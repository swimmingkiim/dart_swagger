// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_documentation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalDocumentation _$ExternalDocumentationFromJson(
        Map<String, dynamic> json) =>
    ExternalDocumentation(
      url: json['url'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ExternalDocumentationToJson(
    ExternalDocumentation instance) {
  final val = <String, dynamic>{
    'url': instance.url,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  return val;
}
