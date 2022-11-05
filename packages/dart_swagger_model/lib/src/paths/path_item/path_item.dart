import 'package:dart_swagger_model/src/paths/path_item/parameters/parameter/parameter_or_reference.dart';
import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/server/server.dart';
import 'package:dart_swagger_model/src/paths/path_item/operation/operation.dart';

part 'path_item.g.dart';

@JsonSerializable()
class PathItem {
  String? $ref;
  String? summary;
  String? description;
  List<Server>? servers;
  Operation? get;
  Operation? put;
  Operation? post;
  Operation? delete;
  Operation? options;
  Operation? head;
  Operation? patch;
  Operation? trace;
  @JsonKey(toJson: parametersToJson)
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
  static List<Map<String, dynamic>>? parametersToJson(
          List<ParameterOrReference>? parameters) =>
      parameters?.map((parameter) => parameter.toJson()).toList();
}
