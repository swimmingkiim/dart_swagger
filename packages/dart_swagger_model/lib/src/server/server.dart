import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/server/server_variable/server_variable.dart';

part 'server.g.dart';

@JsonSerializable()
class Server {
  final String url;
  String? description;
  Map<String, ServerVariable>? variables;

  Server({
    required this.url,
    this.description,
    this.variables,
  });

  factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);

  Map<String, dynamic> toJson() => _$ServerToJson(this);
}
