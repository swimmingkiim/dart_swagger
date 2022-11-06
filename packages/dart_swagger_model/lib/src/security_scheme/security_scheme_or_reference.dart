import 'package:json_annotation/json_annotation.dart';

import 'package:dart_swagger_model/util/either.dart';

// sub models
import 'package:dart_swagger_model/src/security_scheme/security_scheme.dart';
import 'package:dart_swagger_model/src/reference/reference.dart';

part 'security_scheme_or_reference.g.dart';

@JsonSerializable()
class SecuritySchemeOrReference extends Either<SecurityScheme, Reference> {
  SecuritySchemeOrReference({
    super.left,
    super.right,
  });

  factory SecuritySchemeOrReference.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('\$ref')) {
      return _$SecuritySchemeOrReferenceFromJson({'right': json});
    }
    return _$SecuritySchemeOrReferenceFromJson({'left': json});
  }

  Map<String, dynamic> toJson() {
    final json = _$SecuritySchemeOrReferenceToJson(this);
    if (left != null) {
      return (json['left'] as SecurityScheme).toJson();
    }
    return (json['right'] as Reference).toJson();
  }
}
