// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth_flow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OAuthFlow _$OAuthFlowFromJson(Map<String, dynamic> json) => OAuthFlow(
      authorizationUrl: json['authorizationUrl'] as String,
      tokenUrl: json['tokenUrl'] as String,
      scopes: Map<String, String>.from(json['scopes'] as Map),
      refreshUrl: json['refreshUrl'] as String?,
    );

Map<String, dynamic> _$OAuthFlowToJson(OAuthFlow instance) {
  final val = <String, dynamic>{
    'authorizationUrl': instance.authorizationUrl,
    'tokenUrl': instance.tokenUrl,
    'scopes': instance.scopes,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('refreshUrl', instance.refreshUrl);
  return val;
}
