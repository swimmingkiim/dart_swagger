// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paths.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Paths _$PathsFromJson(Map<String, dynamic> json) => Paths(
      $routePaths: (json[r'$routePaths'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, PathItem.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$PathsToJson(Paths instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(r'$routePaths', PathItem.pathItemsToJson(instance.$routePaths));
  return val;
}
