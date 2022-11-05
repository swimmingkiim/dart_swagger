import 'package:json_annotation/json_annotation.dart';

part 'xml.g.dart';

@JsonSerializable()
class Xml {
  String? name;
  String? namespace;
  String? prefix;
  bool? attribute;
  bool? wrapped;

  Xml({
    this.name,
    this.namespace,
    this.prefix,
    this.attribute = false,
    this.wrapped = false,
  });

  factory Xml.fromJson(Map<String, dynamic> json) => _$XmlFromJson(json);

  Map<String, dynamic> toJson() => _$XmlToJson(this);
}
