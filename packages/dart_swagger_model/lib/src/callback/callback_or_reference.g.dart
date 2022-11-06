// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'callback_or_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CallbackOrReference _$CallbackOrReferenceFromJson(Map<String, dynamic> json) =>
    CallbackOrReference(
      left: json['left'] == null
          ? null
          : Callback.fromJson(json['left'] as Map<String, dynamic>),
      right: json['right'] == null
          ? null
          : Reference.fromJson(json['right'] as Map<String, dynamic>),
    )..value = json['value'];

Map<String, dynamic> _$CallbackOrReferenceToJson(CallbackOrReference instance) {
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
