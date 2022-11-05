import 'package:dart_swagger_model/src/info/info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'open_api.g.dart';

@JsonSerializable()
class OpenApi {
  final String openapi;
  final Info info;

  OpenApi({
    required this.openapi,
    required this.info,
  });

  factory OpenApi.fromJson(Map<String, dynamic> json) =>
      _$OpenApiFromJson(json);

  Map<String, dynamic> toJson() => _$OpenApiToJson(this);
}
