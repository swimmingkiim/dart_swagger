import 'package:json_annotation/json_annotation.dart';

import 'package:dart_swagger_model/util/either.dart';

// sub models
import 'package:dart_swagger_model/src/response/response.dart';
import 'package:dart_swagger_model/src/reference/reference.dart';

part 'response_or_reference.g.dart';

@JsonSerializable()
class ResponseOrReference extends Either<Response, Reference> {
  ResponseOrReference({
    super.left,
    super.right,
  });

  factory ResponseOrReference.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('\$ref')) {
      return _$ResponseOrReferenceFromJson({'right': json});
    }
    return _$ResponseOrReferenceFromJson({'left': json});
  }

  Map<String, dynamic> toJson() {
    final json = _$ResponseOrReferenceToJson(this);
    if (left != null) {
      return (json['left'] as Response).toJson();
    }
    return (json['right'] as Reference).toJson();
  }
}
