import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/response/response.dart';
import 'package:dart_swagger_model/src/response/response_or_reference.dart';

part 'responses.g.dart';

enum HttpStatusCode {
  code_200(200);

  const HttpStatusCode(this.code);
  final int code;
}

@JsonSerializable()
class Responses {
  @JsonKey(name: 'default', toJson: Response.responseOrReferenceToJson)
  ResponseOrReference? $default;
  @JsonKey(toJson: Response.nullableResponsesToJson)
  Map<String, ResponseOrReference>? $responses;

  Responses({
    this.$default,
    this.$responses,
  });

  factory Responses.fromJson(Map<String, dynamic> json) =>
      _$ResponsesFromJson({...json, '\$responses': json..remove('default')});

  Map<String, dynamic> toJson() {
    final json = _$ResponsesToJson(this);
    if ($default != null) {
      return {
        'default': json['default'],
        ...json['\$responses'],
      };
    }
    return {
      ...json['\$responses'],
    };
  }

  static Map<String, dynamic> responsesToJson(Responses responses) =>
      responses.toJson();
}
