import 'package:dart_swagger_model/src/o_auth_flow/o_auth_flow.dart';
import 'package:json_annotation/json_annotation.dart';

part 'o_auth_flows.g.dart';

@JsonSerializable()
class OAuthFlows {
  @JsonKey(toJson: OAuthFlow.nullableOAuthFlowToJson)
  OAuthFlow? implicit;
  @JsonKey(toJson: OAuthFlow.nullableOAuthFlowToJson)
  OAuthFlow? password;
  @JsonKey(toJson: OAuthFlow.nullableOAuthFlowToJson)
  OAuthFlow? clientCredentials;
  @JsonKey(toJson: OAuthFlow.nullableOAuthFlowToJson)
  OAuthFlow? authorizationCode;

  OAuthFlows({
    this.implicit,
    this.password,
    this.clientCredentials,
    this.authorizationCode,
  });

  factory OAuthFlows.fromJson(Map<String, dynamic> json) =>
      _$OAuthFlowsFromJson(json);

  Map<String, dynamic> toJson() => _$OAuthFlowsToJson(this);

  static Map<String, dynamic> oAuthFlowToJson(OAuthFlows oAuthFlows) =>
      oAuthFlows.toJson();
}
