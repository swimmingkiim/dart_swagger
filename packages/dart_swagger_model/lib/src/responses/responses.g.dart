// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Responses _$ResponsesFromJson(Map<String, dynamic> json) => Responses(
      $default: json['default'] == null
          ? null
          : ResponseOrReference.fromJson(
              json['default'] as Map<String, dynamic>),
      $responses: (json[r'$responses'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, ResponseOrReference.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$ResponsesToJson(Responses instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'default', Response.responseOrReferenceToJson(instance.$default));
  writeNotNull(
      r'$responses', Response.nullableResponsesToJson(instance.$responses));
  return val;
}
