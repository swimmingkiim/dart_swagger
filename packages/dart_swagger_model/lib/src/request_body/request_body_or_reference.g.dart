// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_body_or_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestBodyOrReference _$RequestBodyOrReferenceFromJson(
        Map<String, dynamic> json) =>
    RequestBodyOrReference(
      left: json['left'] == null
          ? null
          : RequestBody.fromJson(json['left'] as Map<String, dynamic>),
      right: json['right'] == null
          ? null
          : Reference.fromJson(json['right'] as Map<String, dynamic>),
    )..value = json['value'];

Map<String, dynamic> _$RequestBodyOrReferenceToJson(
    RequestBodyOrReference instance) {
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
