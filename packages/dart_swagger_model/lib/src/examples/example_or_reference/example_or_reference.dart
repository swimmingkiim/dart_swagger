import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/example/example.dart';
import 'package:dart_swagger_model/src/reference/reference.dart';

part 'example_or_reference.g.dart';

@JsonSerializable()
class ExampleOrReference {
  Example? example;
  Reference? reference;

  ExampleOrReference({
    this.example,
    this.reference,
  });

  factory ExampleOrReference.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('\$ref')) {
      return _$ExampleOrReferenceFromJson({'reference': json});
    }
    return _$ExampleOrReferenceFromJson({'example': json});
  }

  Map<String, dynamic> toJson() {
    final json = _$ExampleOrReferenceToJson(this);
    if (example != null) {
      return json['example'];
    }
    return json['reference'];
  }
}
