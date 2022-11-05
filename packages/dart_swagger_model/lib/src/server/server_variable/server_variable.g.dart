// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_variable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerVariable _$ServerVariableFromJson(Map<String, dynamic> json) =>
    ServerVariable(
      $default: json['default'] as String,
      $enum: (json['enum'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ServerVariableToJson(ServerVariable instance) =>
    <String, dynamic>{
      'default': instance.$default,
      'enum': instance.$enum,
      'description': instance.description,
    };
