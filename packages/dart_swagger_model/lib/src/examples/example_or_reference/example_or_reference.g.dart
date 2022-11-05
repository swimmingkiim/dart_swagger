// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_or_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleOrReference _$ExampleOrReferenceFromJson(Map<String, dynamic> json) =>
    ExampleOrReference(
      example: json['example'] == null
          ? null
          : Example.fromJson(json['example'] as Map<String, dynamic>),
      reference: json['reference'] == null
          ? null
          : Reference.fromJson(json['reference'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExampleOrReferenceToJson(ExampleOrReference instance) =>
    <String, dynamic>{
      'example': instance.example,
      'reference': instance.reference,
    };
