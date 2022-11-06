import 'package:dart_swagger_model/src/link/link_or_reference.dart';
import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/server/server.dart';

part 'link.g.dart';

@JsonSerializable()
class Link {
  String? operationRef;
  String? operationId;
  Map<String, dynamic>? parameters;
  dynamic requestBody;
  String? description;
  @JsonKey(toJson: Server.nullableServerToJson)
  Server? server;

  Link({
    this.operationRef,
    this.operationId,
    this.parameters,
    this.requestBody,
    this.description,
    this.server,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);

  static Map<String, dynamic>? linksToJson(
          Map<String, LinkOrReference>? links) =>
      links?.map((key, value) => MapEntry(key, value.toJson()));
}
