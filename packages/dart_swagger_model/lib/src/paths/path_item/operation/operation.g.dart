// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Operation _$OperationFromJson(Map<String, dynamic> json) => Operation(
      responses: Responses.fromJson(json['responses'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      operationId: json['operationId'] as String?,
      servers: (json['servers'] as List<dynamic>?)
          ?.map((e) => Server.fromJson(e as Map<String, dynamic>))
          .toList(),
      parameters: (json['parameters'] as List<dynamic>?)
          ?.map((e) => ParameterOrReference.fromJson(e as Map<String, dynamic>))
          .toList(),
      externalDocs: json['externalDocs'] == null
          ? null
          : ExternalDocumentation.fromJson(
              json['externalDocs'] as Map<String, dynamic>),
      requestBody: json['requestBody'] == null
          ? null
          : RequestBodyOrReference.fromJson(
              json['requestBody'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OperationToJson(Operation instance) {
  final val = <String, dynamic>{
    'responses': Responses.responsesToJson(instance.responses),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tags', instance.tags);
  writeNotNull('summary', instance.summary);
  writeNotNull('description', instance.description);
  writeNotNull('operationId', instance.operationId);
  writeNotNull('servers', Server.serversToJson(instance.servers));
  writeNotNull('parameters', Parameter.parametersToJson(instance.parameters));
  writeNotNull('externalDocs',
      ExternalDocumentation.externalDocumentationToJson(instance.externalDocs));
  writeNotNull('requestBody',
      RequestBody.requestBodyOrReferenceToJson(instance.requestBody));
  return val;
}
