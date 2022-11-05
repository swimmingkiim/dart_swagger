import 'package:json_annotation/json_annotation.dart';

import 'package:dart_swagger_model/util/either.dart';

// sub models
import 'package:dart_swagger_model/src/example/example.dart';
import 'package:dart_swagger_model/src/reference/reference.dart';

part 'example_or_reference.g.dart';

@JsonSerializable()
class ExampleOrReference extends Either<Example, Reference> {
  ExampleOrReference({
    super.left,
    super.right,
  });

  factory ExampleOrReference.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('\$ref')) {
      return _$ExampleOrReferenceFromJson({'right': json});
    }
    return _$ExampleOrReferenceFromJson({'left': json});
  }

  Map<String, dynamic> toJson() {
    final json = _$ExampleOrReferenceToJson(this);
    return json['left'] ?? json['right'];
  }
}
