import 'package:dart_swagger_model/src/request_body/request_body_or_reference.dart';
import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/media_type/media_type.dart';

part 'request_body.g.dart';

@JsonSerializable()
class RequestBody {
  @JsonKey(toJson: MediaType.contentToJson)
  Map<String, MediaType> content;
  String? description;
  bool? required;

  RequestBody({
    required this.content,
    this.description,
    this.required = false,
  });

  factory RequestBody.fromJson(Map<String, dynamic> json) =>
      _$RequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RequestBodyToJson(this);

  static Map<String, dynamic>? requestBodyOrReferenceToJson(
          RequestBodyOrReference? requestBodyOrReference) =>
      requestBodyOrReference?.toJson();

  static Map<String, dynamic>? nullableRequestBodiesOrReferenceToJson(
          Map<String, RequestBodyOrReference>? requestBodies) =>
      requestBodies?.map((key, value) => MapEntry(key, value.toJson()));
}
