import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/example/example_or_reference.dart';

part 'parameter.g.dart';

@JsonSerializable()
class Parameter {
  final String name;
  @JsonKey(name: 'in')
  final String $in;
  String? description;
  bool? required;
  bool? deprecated;
  bool? allowEmptyValue;
  String? style;
  bool? explode;
  bool? allowReserved;
  dynamic example;
  @JsonKey(toJson: examplesToJson)
  Map<String, ExampleOrReference>? examples;

  Parameter({
    required this.name,
    required this.$in,
    this.description,
    this.required = false,
    this.deprecated = false,
    this.allowEmptyValue = false,
    this.style,
    this.explode,
    this.allowReserved = false,
    this.example,
    this.examples,
  });

  factory Parameter.fromJson(Map<String, dynamic> json) =>
      _$ParameterFromJson(json);

  Map<String, dynamic> toJson() => _$ParameterToJson(this);
  static Map<String, dynamic>? examplesToJson(
          Map<String, ExampleOrReference>? examples) =>
      examples?.map((key, value) => MapEntry(key, value.toJson()));
}
