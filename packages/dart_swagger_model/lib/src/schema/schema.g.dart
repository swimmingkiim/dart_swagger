// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Schema _$SchemaFromJson(Map<String, dynamic> json) => Schema(
      nullable: json['nullable'] as bool?,
      readOnly: json['readOnly'] as bool?,
      writeOnly: json['writeOnly'] as bool?,
      example: json['example'],
      deprecated: json['deprecated'] as bool?,
      discriminator: json['discriminator'] == null
          ? null
          : Discriminator.fromJson(
              json['discriminator'] as Map<String, dynamic>),
      xml: json['xml'] == null
          ? null
          : Xml.fromJson(json['xml'] as Map<String, dynamic>),
      title: json['title'] as String?,
      multipleOf: (json['multipleOf'] as num?)?.toDouble(),
      maximum: json['maximum'] as int?,
      exclusiveMaximum: json['exclusiveMaximum'] as bool?,
      minimum: json['minimum'] as int?,
      exclusiveMinimum: json['exclusiveMinimum'] as bool?,
      maxLength: json['maxLength'] as int?,
      minLength: json['minLength'] as int?,
      pattern: json['pattern'] as String?,
      maxItems: json['maxItems'] as int?,
      minItems: json['minItems'] as int?,
      uniqueItems: json['uniqueItems'] as bool?,
      maxProperties: json['maxProperties'] as int?,
      minProperties: json['minProperties'] as int?,
      required: json['required'] as bool?,
      $enum: (json['enum'] as List<dynamic>?)?.map((e) => e as String).toList(),
      type: json['type'] as String?,
      allOf: (json['allOf'] as List<dynamic>?)
          ?.map((e) => SchemaOrReference.fromJson(e as Map<String, dynamic>))
          .toList(),
      oneOf: (json['oneOf'] as List<dynamic>?)
          ?.map((e) => SchemaOrReference.fromJson(e as Map<String, dynamic>))
          .toList(),
      anyOf: (json['anyOf'] as List<dynamic>?)
          ?.map((e) => SchemaOrReference.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: json['not'] == null
          ? null
          : SchemaOrReference.fromJson(json['not'] as Map<String, dynamic>),
      items: json['items'] == null
          ? null
          : SchemaOrReference.fromJson(json['items'] as Map<String, dynamic>),
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      additionalProperties:
          Schema.schemaOrBooleanFromValue(json['additionalProperties']),
      description: json['description'] as String?,
      format: json['format'] as String?,
      $default: json['default'],
    );

Map<String, dynamic> _$SchemaToJson(Schema instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nullable', instance.nullable);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('writeOnly', instance.writeOnly);
  writeNotNull('example', instance.example);
  writeNotNull('deprecated', instance.deprecated);
  writeNotNull('discriminator',
      Discriminator.discriminatorToJson(instance.discriminator));
  writeNotNull('xml', Xml.xmlToJson(instance.xml));
  writeNotNull('title', instance.title);
  writeNotNull('multipleOf', instance.multipleOf);
  writeNotNull('maximum', instance.maximum);
  writeNotNull('exclusiveMaximum', instance.exclusiveMaximum);
  writeNotNull('minimum', instance.minimum);
  writeNotNull('exclusiveMinimum', instance.exclusiveMinimum);
  writeNotNull('maxLength', instance.maxLength);
  writeNotNull('minLength', instance.minLength);
  writeNotNull('pattern', instance.pattern);
  writeNotNull('maxItems', instance.maxItems);
  writeNotNull('minItems', instance.minItems);
  writeNotNull('uniqueItems', instance.uniqueItems);
  writeNotNull('maxProperties', instance.maxProperties);
  writeNotNull('minProperties', instance.minProperties);
  writeNotNull('required', instance.required);
  writeNotNull('enum', instance.$enum);
  writeNotNull('type', instance.type);
  writeNotNull('allOf', Schema.schemaOrReferenceListToJson(instance.allOf));
  writeNotNull('oneOf', Schema.schemaOrReferenceListToJson(instance.oneOf));
  writeNotNull('anyOf', Schema.schemaOrReferenceListToJson(instance.anyOf));
  writeNotNull('not', Schema.schemaOrReferenceToJson(instance.not));
  writeNotNull('items', Schema.schemaOrReferenceToJson(instance.items));
  writeNotNull(
      'properties', Properties.nullablePropertiesToJson(instance.properties));
  writeNotNull('additionalProperties',
      Schema.schemaOrBooleanToValue(instance.additionalProperties));
  writeNotNull('description', instance.description);
  writeNotNull('format', instance.format);
  writeNotNull('default', instance.$default);
  return val;
}
