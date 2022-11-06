import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/header/header.dart';
import 'package:dart_swagger_model/src/header/header_or_reference.dart';

part 'encoding.g.dart';

@JsonSerializable()
class Encoding {
  String? contentType;
  bool? explode;
  bool? allowReserved;
  String? style;
  @JsonKey(toJson: Header.headersToJson)
  Map<String, HeaderOrReference>? headers;

  Encoding({
    this.contentType,
    this.style,
    this.explode = false,
    this.allowReserved = false,
    this.headers,
  });

  factory Encoding.fromJson(Map<String, dynamic> json) =>
      _$EncodingFromJson(json);

  Map<String, dynamic> toJson() => _$EncodingToJson(this);

  static Map<String, dynamic>? encodingToJson(
          Map<String, Encoding>? encoding) =>
      encoding?.map((key, value) => MapEntry(key, value.toJson()));
}
