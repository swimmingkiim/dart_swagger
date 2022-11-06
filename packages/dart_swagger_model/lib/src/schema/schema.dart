import 'package:dart_swagger_model/src/schema/shcema_or_boolean/schema_or_boolean.dart';
import 'package:dart_swagger_model/src/schema/discriminator/discriminator.dart';
import 'package:dart_swagger_model/src/schema/properties/properties.dart';
import 'package:dart_swagger_model/src/schema/schema_or_reference.dart';
import 'package:dart_swagger_model/src/schema/xml/xml.dart';
import 'package:json_annotation/json_annotation.dart';

part 'schema.g.dart';

@JsonSerializable()
class Schema {
  bool? nullable;
  bool? readOnly;
  bool? writeOnly;
  dynamic example;
  bool? deprecated;

  @JsonKey(toJson: Discriminator.discriminatorToJson)
  Discriminator? discriminator;
  @JsonKey(toJson: Xml.xmlToJson)
  Xml? xml;

  String? title;
  double? multipleOf;
  int? maximum;
  bool? exclusiveMaximum;
  int? minimum;
  bool? exclusiveMinimum;
  int? maxLength;
  int? minLength;
  String? pattern;
  int? maxItems;
  int? minItems;
  bool? uniqueItems;
  int? maxProperties;
  int? minProperties;
  List<String>? required;
  @JsonKey(name: 'enum')
  List<String>? $enum;

  String? type;
  @JsonKey(toJson: schemaOrReferenceListToJson)
  List<SchemaOrReference>? allOf;
  @JsonKey(toJson: schemaOrReferenceListToJson)
  List<SchemaOrReference>? oneOf;
  @JsonKey(toJson: schemaOrReferenceListToJson)
  List<SchemaOrReference>? anyOf;
  @JsonKey(toJson: schemaOrReferenceToJson)
  SchemaOrReference? not;
  @JsonKey(toJson: schemaOrReferenceToJson)
  SchemaOrReference? items;
  @JsonKey(toJson: Properties.nullablePropertiesToJson)
  Properties? properties;
  @JsonKey(fromJson: schemaOrBooleanFromValue, toJson: schemaOrBooleanToValue)
  SchemaOrBoolean? additionalProperties;
  String? description;
  String? format;
  @JsonKey(name: 'default')
  dynamic $default;

  Schema({
    this.nullable,
    this.readOnly,
    this.writeOnly,
    this.example,
    this.deprecated,
    this.discriminator,
    this.xml,
    this.title,
    this.multipleOf,
    this.maximum,
    this.exclusiveMaximum,
    this.minimum,
    this.exclusiveMinimum,
    this.maxLength,
    this.minLength,
    this.pattern,
    this.maxItems,
    this.minItems,
    this.uniqueItems,
    this.maxProperties,
    this.minProperties,
    this.required,
    this.$enum,
    this.type,
    this.allOf,
    this.oneOf,
    this.anyOf,
    this.not,
    this.items,
    this.properties,
    this.additionalProperties,
    this.description,
    this.format,
    this.$default,
  });

  factory Schema.fromJson(Map<String, dynamic> json) => _$SchemaFromJson(json);

  Map<String, dynamic> toJson() => _$SchemaToJson(this);

  static List<Map<String, dynamic>>? schemaOrReferenceListToJson(
          List<SchemaOrReference>? list) =>
      list?.map((schemaOrReference) => schemaOrReference.toJson()).toList();
  static Map<String, dynamic>? schemaOrReferenceToJson(
          SchemaOrReference? schemaOrReference) =>
      schemaOrReference?.toJson();

  static schemaOrBooleanFromValue(dynamic value) =>
      SchemaOrBoolean.fromValue(value);
  static schemaOrBooleanToValue(SchemaOrBoolean? schemaOrBoolean) =>
      schemaOrBoolean?.toValue();

  static Map<String, dynamic>? nullableSchemasToJson(
          Map<String, SchemaOrReference>? schemas) =>
      schemas?.map((key, value) => MapEntry(key, value.toJson()));
}
