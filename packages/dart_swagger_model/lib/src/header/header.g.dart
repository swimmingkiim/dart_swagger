// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Header _$HeaderFromJson(Map<String, dynamic> json) => Header(
      description: json['description'] as String?,
      required: json['required'] as bool? ?? false,
      deprecated: json['deprecated'] as bool? ?? false,
      allowEmptyValue: json['allowEmptyValue'] as bool? ?? false,
      style: json['style'] as String?,
      explode: json['explode'] as bool?,
      allowReserved: json['allowReserved'] as bool? ?? false,
      example: json['example'],
      examples: (json['examples'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ExampleOrReference.fromJson(e as Map<String, dynamic>)),
      ),
      schema: json['schema'] == null
          ? null
          : SchemaOrReference.fromJson(json['schema'] as Map<String, dynamic>),
      content: (json['content'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, MediaType.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$HeaderToJson(Header instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('required', instance.required);
  writeNotNull('deprecated', instance.deprecated);
  writeNotNull('allowEmptyValue', instance.allowEmptyValue);
  writeNotNull('style', instance.style);
  writeNotNull('explode', instance.explode);
  writeNotNull('allowReserved', instance.allowReserved);
  writeNotNull('example', instance.example);
  writeNotNull('examples', Example.examplesToJson(instance.examples));
  writeNotNull('schema', Schema.schemaOrReferenceToJson(instance.schema));
  writeNotNull('content', MediaType.nullableContentToJson(instance.content));
  return val;
}
