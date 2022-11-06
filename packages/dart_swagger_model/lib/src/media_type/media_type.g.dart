// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaType _$MediaTypeFromJson(Map<String, dynamic> json) => MediaType(
      schema: json['schema'] == null
          ? null
          : SchemaOrReference.fromJson(json['schema'] as Map<String, dynamic>),
      example: json['example'],
      examples: (json['examples'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ExampleOrReference.fromJson(e as Map<String, dynamic>)),
      ),
      encoding: (json['encoding'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Encoding.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$MediaTypeToJson(MediaType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('schema', Schema.schemaOrReferenceToJson(instance.schema));
  writeNotNull('example', instance.example);
  writeNotNull('examples', Example.examplesToJson(instance.examples));
  writeNotNull('encoding', Encoding.encodingToJson(instance.encoding));
  return val;
}
