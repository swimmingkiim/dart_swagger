// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SecurityScheme _$SecuritySchemeFromJson(Map<String, dynamic> json) =>
    SecurityScheme(
      type: json['type'] as String,
      name: json['name'] as String,
      $in: json['in'] as String,
      scheme: json['scheme'] as String,
      flows: OAuthFlows.fromJson(json['flows'] as Map<String, dynamic>),
      openIdConnectUrl: json['openIdConnectUrl'] as String,
      description: json['description'] as String?,
      bearerFormat: json['bearerFormat'] as String?,
    );

Map<String, dynamic> _$SecuritySchemeToJson(SecurityScheme instance) {
  final val = <String, dynamic>{
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['name'] = instance.name;
  val['in'] = instance.$in;
  val['scheme'] = instance.scheme;
  writeNotNull('bearerFormat', instance.bearerFormat);
  val['flows'] = OAuthFlows.oAuthFlowToJson(instance.flows);
  val['openIdConnectUrl'] = instance.openIdConnectUrl;
  return val;
}
