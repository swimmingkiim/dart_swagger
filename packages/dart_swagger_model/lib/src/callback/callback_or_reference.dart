import 'package:dart_swagger_model/src/callback/callback.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:dart_swagger_model/util/either.dart';

// sub models
import 'package:dart_swagger_model/src/example/example.dart';
import 'package:dart_swagger_model/src/reference/reference.dart';

part 'callback_or_reference.g.dart';

@JsonSerializable()
class CallbackOrReference extends Either<Callback, Reference> {
  CallbackOrReference({
    super.left,
    super.right,
  });

  factory CallbackOrReference.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('\$ref')) {
      return _$CallbackOrReferenceFromJson({'right': json});
    }
    return _$CallbackOrReferenceFromJson({'left': json});
  }

  Map<String, dynamic> toJson() {
    final json = _$CallbackOrReferenceToJson(this);
    if (left != null) {
      return (json['left'] as Example).toJson();
    }
    return (json['right'] as Reference).toJson();
  }
}
