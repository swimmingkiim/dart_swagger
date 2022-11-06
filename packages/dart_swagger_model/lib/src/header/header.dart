import 'package:dart_swagger_model/src/header/header_or_reference.dart';
import 'package:dart_swagger_model/src/media_type/media_type.dart';
import 'package:dart_swagger_model/src/schema/schema.dart';
import 'package:dart_swagger_model/src/schema/schema_or_reference.dart';
import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/example/example_or_reference.dart';
import 'package:dart_swagger_model/src/example/example.dart';

part 'header.g.dart';

@JsonSerializable()
class Header {
  String? description;
  bool? required;
  bool? deprecated;
  bool? allowEmptyValue;
  String? style;
  bool? explode;
  bool? allowReserved;
  dynamic example;
  @JsonKey(toJson: Example.examplesToJson)
  Map<String, ExampleOrReference>? examples;
  @JsonKey(toJson: Schema.schemaOrReferenceToJson)
  SchemaOrReference? schema;
  @JsonKey(toJson: MediaType.nullableContentToJson)
  Map<String, MediaType>? content;

  Header({
    this.description,
    this.required = false,
    this.deprecated = false,
    this.allowEmptyValue = false,
    this.style,
    this.explode,
    this.allowReserved = false,
    this.example,
    this.examples,
    this.schema,
    this.content,
  });

  factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderToJson(this);

  static Map<String, dynamic>? headersToJson(
          Map<String, HeaderOrReference>? headers) =>
      headers?.map((key, value) => MapEntry(key, value.toJson()));
}
