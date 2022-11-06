import 'package:json_annotation/json_annotation.dart';

import 'package:dart_swagger_model/util/either.dart';

// sub models
import 'package:dart_swagger_model/src/link/link.dart';
import 'package:dart_swagger_model/src/reference/reference.dart';

part 'link_or_reference.g.dart';

@JsonSerializable()
class LinkOrReference extends Either<Link, Reference> {
  LinkOrReference({
    super.left,
    super.right,
  });

  factory LinkOrReference.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('\$ref')) {
      return _$LinkOrReferenceFromJson({'right': json});
    }
    return _$LinkOrReferenceFromJson({'left': json});
  }

  Map<String, dynamic> toJson() {
    final json = _$LinkOrReferenceToJson(this);
    if (left != null) {
      return (json['left'] as Link).toJson();
    }
    return (json['right'] as Reference).toJson();
  }
}
