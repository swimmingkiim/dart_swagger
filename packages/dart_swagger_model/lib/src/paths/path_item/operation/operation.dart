import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/server/server.dart';
import 'package:dart_swagger_model/src/external_documentation/external_documentation.dart';
import 'package:dart_swagger_model/src/paths/path_item/parameters/parameter/parameter.dart';
import 'package:dart_swagger_model/src/paths/path_item/parameters/parameter/parameter_or_reference.dart';

part 'operation.g.dart';

@JsonSerializable()
class Operation {
  List<String>? tags;
  String? summary;
  String? description;
  String? operationId;
  @JsonKey(toJson: Server.serversToJson)
  List<Server>? servers;
  @JsonKey(toJson: Parameter.parametersToJson)
  List<ParameterOrReference>? parameters;
  @JsonKey(toJson: ExternalDocumentation.externalDocumentationToJson)
  ExternalDocumentation? externalDocs;

  Operation({
    this.tags,
    this.summary,
    this.description,
    this.operationId,
    this.servers,
    this.parameters,
    this.externalDocs,
  });

  factory Operation.fromJson(Map<String, dynamic> json) =>
      _$OperationFromJson(json);

  Map<String, dynamic> toJson() => _$OperationToJson(this);

  static Map<String, dynamic>? operationToJson(Operation? operation) =>
      operation?.toJson();
}
