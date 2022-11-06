import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/schema/schema_or_reference.dart';

part 'properties.g.dart';

@JsonSerializable()
class Properties {
  @JsonKey(toJson: propertiesToJson)
  final Map<String, SchemaOrReference> $properties;

  Properties({
    required this.$properties,
  });

  factory Properties.fromJson(Map<String, dynamic> json) {
    return _$PropertiesFromJson({'\$properties': json});
  }

  Map<String, dynamic> toJson() => _$PropertiesToJson(this)['\$properties'];
  static Map<String, dynamic> propertiesToJson(
          Map<String, SchemaOrReference> $properties) =>
      $properties.map((key, value) => MapEntry(key, value.toJson()));

  static Map<String, dynamic>? nullablePropertiesToJson(
          Properties? properties) =>
      properties?.$properties
          .map((key, value) => MapEntry(key, value.toJson()));
}
