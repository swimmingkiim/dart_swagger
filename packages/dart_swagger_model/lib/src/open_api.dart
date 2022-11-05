import 'package:dart_swagger_model/src/paths/paths.dart';
import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/info/info.dart';
import 'package:dart_swagger_model/src/server/server.dart';

part 'open_api.g.dart';

@JsonSerializable()
class OpenApi {
  final String openapi;
  final Info info;
  final Paths paths;
  List<Server>? servers;

  OpenApi({
    required this.openapi,
    required this.info,
    required this.paths,
    this.servers,
  });

  factory OpenApi.fromJson(Map<String, dynamic> json) =>
      _$OpenApiFromJson(json);

  Map<String, dynamic> toJson() => _$OpenApiToJson(this);
}
