import 'package:dart_swagger_model/src/o_auth_flows/o_auth_flows.dart';
import 'package:json_annotation/json_annotation.dart';

// sub models

part 'security_scheme.g.dart';

@JsonSerializable()
class SecurityScheme {
  String type;
  String? description;
  String name;
  @JsonKey(name: 'in')
  String $in;
  String scheme;
  String? bearerFormat;
  @JsonKey(toJson: OAuthFlows.oAuthFlowToJson)
  OAuthFlows flows;
  String openIdConnectUrl;

  SecurityScheme({
    required this.type,
    required this.name,
    required this.$in,
    required this.scheme,
    required this.flows,
    required this.openIdConnectUrl,
    this.description,
    this.bearerFormat,
  });

  factory SecurityScheme.fromJson(Map<String, dynamic> json) =>
      _$SecuritySchemeFromJson(json);

  Map<String, dynamic> toJson() => _$SecuritySchemeToJson(this);

  // static Map<String, dynamic>? nullableServerToJson(Server? server) =>
  //     server?.toJson();
}
