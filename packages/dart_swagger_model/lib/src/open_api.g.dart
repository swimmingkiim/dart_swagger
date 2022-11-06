// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenApi _$OpenApiFromJson(Map<String, dynamic> json) => OpenApi(
      openapi: json['openapi'] as String,
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
      paths: Paths.fromJson(json['paths'] as Map<String, dynamic>),
      servers: (json['servers'] as List<dynamic>?)
          ?.map((e) => Server.fromJson(e as Map<String, dynamic>))
          .toList(),
      securityRequirement: json['securityRequirement'] == null
          ? null
          : SecurityRequirement.fromJson(
              json['securityRequirement'] as Map<String, dynamic>),
      externalDocs: json['externalDocs'] == null
          ? null
          : ExternalDocumentation.fromJson(
              json['externalDocs'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OpenApiToJson(OpenApi instance) {
  final val = <String, dynamic>{
    'openapi': instance.openapi,
    'info': OpenApi.infoToJson(instance.info),
    'paths': OpenApi.pathsToJson(instance.paths),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('servers', OpenApi.serversToJson(instance.servers));
  writeNotNull(
      'securityRequirement',
      SecurityRequirement.nullableSecurityRequirementToJson(
          instance.securityRequirement));
  writeNotNull('externalDocs',
      ExternalDocumentation.externalDocumentationToJson(instance.externalDocs));
  writeNotNull('tags', Tag.nullableTagsToJson(instance.tags));
  return val;
}
