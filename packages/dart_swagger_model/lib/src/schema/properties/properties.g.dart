// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Properties _$PropertiesFromJson(Map<String, dynamic> json) => Properties(
      $properties: (json[r'$properties'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, SchemaOrReference.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$PropertiesToJson(Properties instance) =>
    <String, dynamic>{
      r'$properties': Properties.propertiesToJson(instance.$properties),
    };
