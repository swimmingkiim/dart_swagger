// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      description: json['description'] as String,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, HeaderOrReference.fromJson(e as Map<String, dynamic>)),
      ),
      content: (json['content'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, MediaType.fromJson(e as Map<String, dynamic>)),
      ),
      links: (json['links'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, LinkOrReference.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$ResponseToJson(Response instance) {
  final val = <String, dynamic>{
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('headers', Header.headersToJson(instance.headers));
  writeNotNull('content', MediaType.nullableContentToJson(instance.content));
  writeNotNull('links', Link.linksToJson(instance.links));
  return val;
}
