import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/response/response_or_reference.dart';
import 'package:dart_swagger_model/src/media_type/media_type.dart';
import 'package:dart_swagger_model/src/header/header.dart';
import 'package:dart_swagger_model/src/header/header_or_reference.dart';
import 'package:dart_swagger_model/src/link/link.dart';
import 'package:dart_swagger_model/src/link/link_or_reference.dart';

part 'response.g.dart';

@JsonSerializable()
class Response {
  String description;
  @JsonKey(toJson: Header.headersToJson)
  Map<String, HeaderOrReference>? headers;
  @JsonKey(toJson: MediaType.nullableContentToJson)
  Map<String, MediaType>? content;
  @JsonKey(toJson: Link.linksToJson)
  Map<String, LinkOrReference>? links;

  Response({
    required this.description,
    this.headers,
    this.content,
    this.links,
  });

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseToJson(this);

  static Map<String, dynamic>? responseOrReferenceToJson(
          ResponseOrReference? responseOrReference) =>
      responseOrReference?.toJson();

  static Map<String, dynamic>? nullableResponsesToJson(
          Map<String, ResponseOrReference>? responses) =>
      responses?.map((key, value) => MapEntry(key, value.toJson()));
}
