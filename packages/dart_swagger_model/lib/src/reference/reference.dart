import 'package:json_annotation/json_annotation.dart';

part 'reference.g.dart';

@JsonSerializable()
class Reference {
  final String $ref;

  Reference({
    required this.$ref,
  });

  factory Reference.fromJson(Map<String, dynamic> json) =>
      _$ReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$ReferenceToJson(this);
}

mixin OrReference {
  Reference? orReference(Map<String, dynamic> json) {
    if (json.containsKey('\$ref')) {
      return Reference.fromJson(json);
    }
    return null;
  }
}
