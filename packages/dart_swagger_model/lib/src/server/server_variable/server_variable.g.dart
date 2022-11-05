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

Map<String, dynamic> _$ServerVariableToJson(ServerVariable instance) {
  final val = <String, dynamic>{
    'default': instance.$default,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enum', instance.$enum);
  writeNotNull('description', instance.description);
  return val;
}
