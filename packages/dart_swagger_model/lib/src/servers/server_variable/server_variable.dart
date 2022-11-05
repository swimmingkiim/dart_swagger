import 'package:json_annotation/json_annotation.dart';

part 'server_variable.g.dart';

@JsonSerializable()
class ServerVariable {
  @JsonKey(name: "default")
  final String $default;
  @JsonKey(name: "enum")
  List<String>? $enum;
  String? description;

  ServerVariable({
    required this.$default,
    this.$enum,
    this.description,
  });

  factory ServerVariable.fromJson(Map<String, dynamic> json) =>
      _$ServerVariableFromJson(json);

  Map<String, dynamic> toJson() => _$ServerVariableToJson(this);
}
