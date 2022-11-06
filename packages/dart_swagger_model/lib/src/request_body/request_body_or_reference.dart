import 'package:json_annotation/json_annotation.dart';

import 'package:dart_swagger_model/util/either.dart';

// sub models
import 'package:dart_swagger_model/src/request_body/request_body.dart';
import 'package:dart_swagger_model/src/reference/reference.dart';

part 'request_body_or_reference.g.dart';

@JsonSerializable()
class RequestBodyOrReference extends Either<RequestBody, Reference> {
  RequestBodyOrReference({
    super.left,
    super.right,
  });

  factory RequestBodyOrReference.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('\$ref')) {
      return _$RequestBodyOrReferenceFromJson({'right': json});
    }
    return _$RequestBodyOrReferenceFromJson({'left': json});
  }

  Map<String, dynamic> toJson() {
    final json = _$RequestBodyOrReferenceToJson(this);
    if (left != null) {
      return (json['left'] as RequestBody).toJson();
    }
    return (json['right'] as Reference).toJson();
  }
}
