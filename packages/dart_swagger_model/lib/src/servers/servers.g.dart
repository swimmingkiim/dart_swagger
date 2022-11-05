// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Servers _$ServersFromJson(Map<String, dynamic> json) => Servers(
      url: json['url'] as String,
      description: json['description'] as String?,
      variables: (json['variables'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ServerVariable.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$ServersToJson(Servers instance) => <String, dynamic>{
      'url': instance.url,
      'description': instance.description,
      'variables': instance.variables,
    };
