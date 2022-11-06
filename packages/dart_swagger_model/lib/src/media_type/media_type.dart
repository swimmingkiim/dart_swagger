import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/encoding/encoding.dart';
import 'package:dart_swagger_model/src/example/example.dart';
import 'package:dart_swagger_model/src/example/example_or_reference.dart';
import 'package:dart_swagger_model/src/schema/schema.dart';
import 'package:dart_swagger_model/src/schema/schema_or_reference.dart';

part 'media_type.g.dart';

@JsonSerializable()
class MediaType {
  @JsonKey(toJson: Schema.schemaOrReferenceToJson)
  SchemaOrReference? schema;
  dynamic example;
  @JsonKey(toJson: Example.examplesToJson)
  Map<String, ExampleOrReference>? examples;
  @JsonKey(toJson: Encoding.encodingToJson)
  Map<String, Encoding>? encoding;

  MediaType({
    this.schema,
    this.example,
    this.examples,
    this.encoding,
  });

  factory MediaType.fromJson(Map<String, dynamic> json) =>
      _$MediaTypeFromJson(json);

  Map<String, dynamic> toJson() => _$MediaTypeToJson(this);

  static Map<String, dynamic> contentToJson(Map<String, MediaType> content) =>
      content.map((key, value) => MapEntry(key, value.toJson()));

  static Map<String, dynamic>? nullableContentToJson(
          Map<String, MediaType>? content) =>
      content?.map((key, value) => MapEntry(key, value.toJson()));
}
