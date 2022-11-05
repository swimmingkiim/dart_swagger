import 'package:json_annotation/json_annotation.dart';

import 'package:dart_swagger_model/util/either.dart';

// sub models
import 'package:dart_swagger_model/src/schema/schema.dart';
import 'package:dart_swagger_model/src/reference/reference.dart';

part 'schema_or_reference.g.dart';

@JsonSerializable()
class SchemaOrReference extends Either<Schema, Reference> {
  SchemaOrReference({
    super.left,
    super.right,
  });

  factory SchemaOrReference.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('\$ref')) {
      return _$SchemaOrReferenceFromJson({'right': json});
    }
    return _$SchemaOrReferenceFromJson({'left': json});
  }

  Map<String, dynamic> toJson() {
    final json = _$SchemaOrReferenceToJson(this);
    return json['left'] ?? json['right'];
  }
}
