import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/server/server.dart';

part 'operation.g.dart';

@JsonSerializable()
class Operation {
  List<String>? tags;
  String? summary;
  String? description;
  String? operationId;
  @JsonKey(toJson: serversToJson)
  List<Server>? servers;

  Operation({
    this.tags,
    this.summary,
    this.description,
    this.operationId,
    this.servers,
  });

  factory Operation.fromJson(Map<String, dynamic> json) =>
      _$OperationFromJson(json);

  Map<String, dynamic> toJson() => _$OperationToJson(this);
  static List<Map<String, dynamic>>? serversToJson(List<Server>? servers) =>
      servers?.map((server) => server.toJson()).toList();
}
