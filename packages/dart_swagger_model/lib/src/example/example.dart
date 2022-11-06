import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/example/example_or_reference.dart';

part 'example.g.dart';

@JsonSerializable()
class Example {
  String? summary;
  String? description;
  dynamic value;
  String? externalValue;

  Example({
    this.summary,
    this.description,
    this.value,
    this.externalValue,
  });

  factory Example.fromJson(Map<String, dynamic> json) =>
      _$ExampleFromJson(json);

  Map<String, dynamic> toJson() => _$ExampleToJson(this);

  static Map<String, dynamic>? examplesToJson(
          Map<String, ExampleOrReference>? examples) =>
      examples?.map((key, value) => MapEntry(key, value.toJson()));
}
