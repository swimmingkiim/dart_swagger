import 'package:dart_swagger_model/src/paths/paths.dart';
import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/info/info.dart';
import 'package:dart_swagger_model/src/server/server.dart';

part 'open_api.g.dart';

@JsonSerializable()
class OpenApi {
  final String openapi;
  @JsonKey(toJson: infoToJson)
  final Info info;
  @JsonKey(toJson: pathsToJson)
  final Paths paths;
  @JsonKey(toJson: serversToJson)
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

  static Map<String, dynamic> infoToJson(Info info) => info.toJson();
  static List<Map<String, dynamic>>? serversToJson(List<Server>? servers) =>
      servers?.map((server) => server.toJson()).toList();
  static Map<String, dynamic> pathsToJson(Paths paths) => paths.toJson();
}
