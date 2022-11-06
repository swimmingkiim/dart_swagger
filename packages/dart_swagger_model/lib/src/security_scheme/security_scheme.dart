import 'package:dart_swagger_model/src/o_auth_flows/o_auth_flows.dart';
import 'package:dart_swagger_model/src/security_scheme/security_scheme_or_reference.dart';
import 'package:json_annotation/json_annotation.dart';

// sub models

part 'security_scheme.g.dart';

@JsonSerializable()
class SecurityScheme {
  String type;
  String? description;
  String? name;
  @JsonKey(name: 'in')
  String? $in;
  String? scheme;
  String? bearerFormat;
  @JsonKey(toJson: OAuthFlows.nullableOAuthFlowsToJson)
  OAuthFlows? flows;
  String? openIdConnectUrl;

  SecurityScheme({
    required this.type,
    this.scheme,
    this.flows,
    this.openIdConnectUrl,
    this.name,
    this.$in,
    this.description,
    this.bearerFormat,
  });

  factory SecurityScheme.fromJson(Map<String, dynamic> json) =>
      _$SecuritySchemeFromJson(json);

  Map<String, dynamic> toJson() => _$SecuritySchemeToJson(this);

  static Map<String, dynamic>? nullableSecuritySchemesOrReferenceToJson(
          Map<String, SecuritySchemeOrReference>? securitySchemes) =>
      securitySchemes?.map((key, value) => MapEntry(key, value.toJson()));
}
