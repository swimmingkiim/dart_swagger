import 'package:dart_swagger_model/src/header/header.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:dart_swagger_model/util/either.dart';

// sub models
import 'package:dart_swagger_model/src/reference/reference.dart';

part 'header_or_reference.g.dart';

@JsonSerializable()
class HeaderOrReference extends Either<Header, Reference> {
  HeaderOrReference({
    super.left,
    super.right,
  });

  factory HeaderOrReference.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('\$ref')) {
      return _$HeaderOrReferenceFromJson({'right': json});
    }
    return _$HeaderOrReferenceFromJson({'left': json});
  }

  Map<String, dynamic> toJson() {
    final json = _$HeaderOrReferenceToJson(this);
    if (left != null) {
      return (json['left'] as Header).toJson();
    }
    return (json['right'] as Reference).toJson();
  }
}
