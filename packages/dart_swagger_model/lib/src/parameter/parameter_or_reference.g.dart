// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameter_or_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParameterOrReference _$ParameterOrReferenceFromJson(
        Map<String, dynamic> json) =>
    ParameterOrReference(
      left: json['left'] == null
          ? null
          : Parameter.fromJson(json['left'] as Map<String, dynamic>),
      right: json['right'] == null
          ? null
          : Reference.fromJson(json['right'] as Map<String, dynamic>),
    )..value = json['value'];

Map<String, dynamic> _$ParameterOrReferenceToJson(
    ParameterOrReference instance) {
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
