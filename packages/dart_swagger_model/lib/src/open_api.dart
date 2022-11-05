import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/info/info.dart';
import 'package:dart_swagger_model/src/servers/servers.dart';

part 'open_api.g.dart';

@JsonSerializable()
class OpenApi {
  final String openapi;
  final Info info;
  Servers? servers;

  OpenApi({
    required this.openapi,
    required this.info,
    this.servers,
  });

  factory OpenApi.fromJson(Map<String, dynamic> json) =>
      _$OpenApiFromJson(json);

  Map<String, dynamic> toJson() => _$OpenApiToJson(this);
}
