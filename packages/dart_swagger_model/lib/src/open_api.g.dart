// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenApi _$OpenApiFromJson(Map<String, dynamic> json) => OpenApi(
      openapi: json['openapi'] as String,
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
      paths: Paths.fromJson(json['paths'] as Map<String, dynamic>),
      servers: (json['servers'] as List<dynamic>?)
          ?.map((e) => Server.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OpenApiToJson(OpenApi instance) => <String, dynamic>{
      'openapi': instance.openapi,
      'info': instance.info,
      'paths': instance.paths,
      'servers': instance.servers,
    };
