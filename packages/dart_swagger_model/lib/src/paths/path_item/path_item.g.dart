// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PathItem _$PathItemFromJson(Map<String, dynamic> json) => PathItem(
      $ref: json[r'$ref'] as String?,
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      servers: (json['servers'] as List<dynamic>?)
          ?.map((e) => Server.fromJson(e as Map<String, dynamic>))
          .toList(),
      get: json['get'] == null
          ? null
          : Operation.fromJson(json['get'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Operation.fromJson(json['put'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Operation.fromJson(json['post'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Operation.fromJson(json['delete'] as Map<String, dynamic>),
      options: json['options'] == null
          ? null
          : Operation.fromJson(json['options'] as Map<String, dynamic>),
      head: json['head'] == null
          ? null
          : Operation.fromJson(json['head'] as Map<String, dynamic>),
      patch: json['patch'] == null
          ? null
          : Operation.fromJson(json['patch'] as Map<String, dynamic>),
      trace: json['trace'] == null
          ? null
          : Operation.fromJson(json['trace'] as Map<String, dynamic>),
      parameters: (json['parameters'] as List<dynamic>?)
          ?.map((e) => ParameterOrReference.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PathItemToJson(PathItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(r'$ref', instance.$ref);
  writeNotNull('summary', instance.summary);
  writeNotNull('description', instance.description);
  writeNotNull('servers', instance.servers);
  writeNotNull('get', instance.get);
  writeNotNull('put', instance.put);
  writeNotNull('post', instance.post);
  writeNotNull('delete', instance.delete);
  writeNotNull('options', instance.options);
  writeNotNull('head', instance.head);
  writeNotNull('patch', instance.patch);
  writeNotNull('trace', instance.trace);
  writeNotNull('parameters', PathItem.parametersToJson(instance.parameters));
  return val;
}
