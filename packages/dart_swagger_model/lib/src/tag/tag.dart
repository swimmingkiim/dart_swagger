import 'package:dart_swagger_model/src/external_documentation/external_documentation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tag.g.dart';

@JsonSerializable()
class Tag {
  String name;
  String? description;
  @JsonKey(toJson: ExternalDocumentation.externalDocumentationToJson)
  ExternalDocumentation? externalDocs;

  Tag({
    required this.name,
    this.description,
    this.externalDocs,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  Map<String, dynamic> toJson() => _$TagToJson(this);

  static List<Map<String, dynamic>>? nullableTagsToJson(List<Tag>? tags) => tags?.map((tag) => tag.toJson()).toList();
}
