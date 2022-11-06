// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encoding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Encoding _$EncodingFromJson(Map<String, dynamic> json) => Encoding(
      contentType: json['contentType'] as String?,
      style: json['style'] as String?,
      explode: json['explode'] as bool? ?? false,
      allowReserved: json['allowReserved'] as bool? ?? false,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, HeaderOrReference.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$EncodingToJson(Encoding instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('contentType', instance.contentType);
  writeNotNull('explode', instance.explode);
  writeNotNull('allowReserved', instance.allowReserved);
  writeNotNull('style', instance.style);
  writeNotNull('headers', Header.headersToJson(instance.headers));
  return val;
}
