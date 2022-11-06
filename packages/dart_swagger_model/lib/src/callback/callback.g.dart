// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'callback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Callback _$CallbackFromJson(Map<String, dynamic> json) => Callback(
      $callbacks: (json[r'$callbacks'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, PathItem.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$CallbackToJson(Callback instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(r'$callbacks', PathItem.pathItemsToJson(instance.$callbacks));
  return val;
}
