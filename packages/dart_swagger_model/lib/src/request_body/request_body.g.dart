// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestBody _$RequestBodyFromJson(Map<String, dynamic> json) => RequestBody(
      content: (json['content'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, MediaType.fromJson(e as Map<String, dynamic>)),
      ),
      description: json['description'] as String?,
      required: json['required'] as bool? ?? false,
    );

Map<String, dynamic> _$RequestBodyToJson(RequestBody instance) {
  final val = <String, dynamic>{
    'content': MediaType.contentToJson(instance.content),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('required', instance.required);
  return val;
}
