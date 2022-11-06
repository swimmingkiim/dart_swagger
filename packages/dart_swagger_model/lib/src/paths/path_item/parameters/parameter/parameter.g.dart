// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parameter _$ParameterFromJson(Map<String, dynamic> json) => Parameter(
      name: json['name'] as String,
      $in: json['in'] as String,
      description: json['description'] as String?,
      required: json['required'] as bool? ?? false,
      deprecated: json['deprecated'] as bool? ?? false,
      allowEmptyValue: json['allowEmptyValue'] as bool? ?? false,
      style: json['style'] as String?,
      explode: json['explode'] as bool?,
      allowReserved: json['allowReserved'] as bool? ?? false,
      example: json['example'],
      examples: (json['examples'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ExampleOrReference.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$ParameterToJson(Parameter instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'in': instance.$in,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('required', instance.required);
  writeNotNull('deprecated', instance.deprecated);
  writeNotNull('allowEmptyValue', instance.allowEmptyValue);
  writeNotNull('style', instance.style);
  writeNotNull('explode', instance.explode);
  writeNotNull('allowReserved', instance.allowReserved);
  writeNotNull('example', instance.example);
  writeNotNull('examples', Example.examplesToJson(instance.examples));
  return val;
}
