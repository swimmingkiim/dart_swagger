// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_scheme_or_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SecuritySchemeOrReference _$SecuritySchemeOrReferenceFromJson(
        Map<String, dynamic> json) =>
    SecuritySchemeOrReference(
      left: json['left'] == null
          ? null
          : SecurityScheme.fromJson(json['left'] as Map<String, dynamic>),
      right: json['right'] == null
          ? null
          : Reference.fromJson(json['right'] as Map<String, dynamic>),
    )..value = json['value'];

Map<String, dynamic> _$SecuritySchemeOrReferenceToJson(
    SecuritySchemeOrReference instance) {
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
