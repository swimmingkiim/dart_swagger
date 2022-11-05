// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Xml _$XmlFromJson(Map<String, dynamic> json) => Xml(
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      prefix: json['prefix'] as String?,
      attribute: json['attribute'] as bool? ?? false,
      wrapped: json['wrapped'] as bool? ?? false,
    );

Map<String, dynamic> _$XmlToJson(Xml instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('namespace', instance.namespace);
  writeNotNull('prefix', instance.prefix);
  writeNotNull('attribute', instance.attribute);
  writeNotNull('wrapped', instance.wrapped);
  return val;
}
