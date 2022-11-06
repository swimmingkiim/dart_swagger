// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Components _$ComponentsFromJson(Map<String, dynamic> json) => Components(
      schemas: (json['schemas'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, SchemaOrReference.fromJson(e as Map<String, dynamic>)),
      ),
      responses: (json['responses'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, ResponseOrReference.fromJson(e as Map<String, dynamic>)),
      ),
      parameters: (json['parameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, ParameterOrReference.fromJson(e as Map<String, dynamic>)),
      ),
      examples: (json['examples'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ExampleOrReference.fromJson(e as Map<String, dynamic>)),
      ),
      requestBodies: (json['requestBodies'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, RequestBodyOrReference.fromJson(e as Map<String, dynamic>)),
      ),
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, HeaderOrReference.fromJson(e as Map<String, dynamic>)),
      ),
      securitySchemes: (json['securitySchemes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, SecuritySchemeOrReference.fromJson(e as Map<String, dynamic>)),
      ),
      links: (json['links'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, LinkOrReference.fromJson(e as Map<String, dynamic>)),
      ),
      callbacks: (json['callbacks'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, CallbackOrReference.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$ComponentsToJson(Components instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('schemas', Schema.nullableSchemasToJson(instance.schemas));
  writeNotNull(
      'responses', Response.nullableResponsesToJson(instance.responses));
  writeNotNull(
      'parameters', Parameter.nullableParametersToJson(instance.parameters));
  writeNotNull('examples', Example.examplesToJson(instance.examples));
  writeNotNull(
      'requestBodies',
      RequestBody.nullableRequestBodiesOrReferenceToJson(
          instance.requestBodies));
  writeNotNull('headers', Header.headersToJson(instance.headers));
  writeNotNull(
      'securitySchemes',
      SecurityScheme.nullableSecuritySchemesOrReferenceToJson(
          instance.securitySchemes));
  writeNotNull('links', Link.linksToJson(instance.links));
  writeNotNull(
      'callbacks', Callback.nullableCallbacksToJson(instance.callbacks));
  return val;
}
