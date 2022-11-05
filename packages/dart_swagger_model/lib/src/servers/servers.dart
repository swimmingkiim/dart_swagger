import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/servers/server_variable/server_variable.dart';

part 'servers.g.dart';

@JsonSerializable()
class Servers {
  final String url;
  String? description;
  Map<String, ServerVariable>? variables;

  Servers({
    required this.url,
    this.description,
    this.variables,
  });

  factory Servers.fromJson(Map<String, dynamic> json) =>
      _$ServersFromJson(json);

  Map<String, dynamic> toJson() => _$ServersToJson(this);
}
