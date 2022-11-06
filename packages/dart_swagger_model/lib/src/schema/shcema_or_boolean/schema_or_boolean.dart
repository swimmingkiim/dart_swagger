import 'package:dart_swagger_model/util/either.dart';

// sub models
import 'package:dart_swagger_model/src/schema/schema.dart';

class SchemaOrBoolean extends Either<Schema, bool> {
  SchemaOrBoolean({
    super.left,
    super.right,
  });

  factory SchemaOrBoolean.fromValue(dynamic value) {
    if (value is bool) {
      return SchemaOrBoolean(right: value);
    }
    if (value is Map<String, dynamic>) {
      return SchemaOrBoolean(left: Schema.fromJson(value));
    }
    return SchemaOrBoolean();
  }

  dynamic toValue() {
    return left ?? right;
  }
}
