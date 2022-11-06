import 'package:json_annotation/json_annotation.dart';

part 'o_auth_flow.g.dart';

@JsonSerializable()
class OAuthFlow {
  String authorizationUrl;
  String? tokenUrl;
  Map<String, String> scopes;
  String? refreshUrl;

  OAuthFlow({
    required this.authorizationUrl,
    required this.scopes,
    this.tokenUrl,
    this.refreshUrl,
  });

  factory OAuthFlow.fromJson(Map<String, dynamic> json) =>
      _$OAuthFlowFromJson(json);

  Map<String, dynamic> toJson() => _$OAuthFlowToJson(this);

  static Map<String, dynamic>? nullableOAuthFlowToJson(OAuthFlow? oAuthFlow) =>
      oAuthFlow?.toJson();
}
