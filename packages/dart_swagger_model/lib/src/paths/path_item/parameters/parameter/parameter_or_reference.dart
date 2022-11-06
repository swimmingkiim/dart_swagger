import 'package:dart_swagger_model/src/paths/path_item/parameters/parameter/parameter.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:dart_swagger_model/util/either.dart';

// sub models
import 'package:dart_swagger_model/src/reference/reference.dart';

part 'parameter_or_reference.g.dart';

@JsonSerializable()
class ParameterOrReference extends Either<Parameter, Reference> {
  ParameterOrReference({
    super.left,
    super.right,
  });

  factory ParameterOrReference.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('\$ref')) {
      return _$ParameterOrReferenceFromJson({'right': json});
    }
    return _$ParameterOrReferenceFromJson({'left': json});
  }

  Map<String, dynamic> toJson() {
    final json = _$ParameterOrReferenceToJson(this);
    if (left != null) {
      return (json['left'] as Parameter).toJson();
    }
    return (json['right'] as Reference).toJson();
  }
}
