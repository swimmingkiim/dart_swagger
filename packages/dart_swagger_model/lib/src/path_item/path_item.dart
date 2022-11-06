import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/parameter/parameter.dart';
import 'package:dart_swagger_model/src/parameter/parameter_or_reference.dart';
import 'package:dart_swagger_model/src/server/server.dart';
import 'package:dart_swagger_model/src/operation/operation.dart';

part 'path_item.g.dart';

@JsonSerializable()
class PathItem {
  String? $ref;
  String? summary;
  String? description;
  @JsonKey(toJson: Server.serversToJson)
  List<Server>? servers;
  @JsonKey(toJson: Operation.operationToJson)
  Operation? get;
  @JsonKey(toJson: Operation.operationToJson)
  Operation? put;
  @JsonKey(toJson: Operation.operationToJson)
  Operation? post;
  @JsonKey(toJson: Operation.operationToJson)
  Operation? delete;
  @JsonKey(toJson: Operation.operationToJson)
  Operation? options;
  @JsonKey(toJson: Operation.operationToJson)
  Operation? head;
  @JsonKey(toJson: Operation.operationToJson)
  Operation? patch;
  @JsonKey(toJson: Operation.operationToJson)
  Operation? trace;
  @JsonKey(toJson: Parameter.parametersToJson)
  List<ParameterOrReference>? parameters;

  PathItem({
    this.$ref,
    this.summary,
    this.description,
    this.servers,
    this.get,
    this.put,
    this.post,
    this.delete,
    this.options,
    this.head,
    this.patch,
    this.trace,
    this.parameters,
  });

  factory PathItem.fromJson(Map<String, dynamic> json) =>
      _$PathItemFromJson(json);

  Map<String, dynamic> toJson() => _$PathItemToJson(this);

  static Map<String, dynamic>? pathItemsToJson(
          Map<String, PathItem>? pathItems) =>
      pathItems?.map((key, value) => MapEntry(key, value.toJson()));
}
