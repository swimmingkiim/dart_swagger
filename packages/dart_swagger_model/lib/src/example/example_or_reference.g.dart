// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_or_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleOrReference _$ExampleOrReferenceFromJson(Map<String, dynamic> json) =>
    ExampleOrReference(
      left: json['left'] == null
          ? null
          : Example.fromJson(json['left'] as Map<String, dynamic>),
      right: json['right'] == null
          ? null
          : Reference.fromJson(json['right'] as Map<String, dynamic>),
    )..value = json['value'];

Map<String, dynamic> _$ExampleOrReferenceToJson(ExampleOrReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('left', instance.left);
  writeNotNull('right', instance.right);
  writeNotNull('value', instance.value);
  return val;
}
