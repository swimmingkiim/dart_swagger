import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/path_item/path_item.dart';

part 'paths.g.dart';

@JsonSerializable()
class Paths {
  @JsonKey(toJson: PathItem.pathItemsToJson)
  final Map<String, PathItem> $routePaths;

  Paths({
    required this.$routePaths,
  });

  factory Paths.fromJson(Map<String, dynamic> json) {
    return _$PathsFromJson({'\$routePaths': json});
  }

  Map<String, dynamic> toJson() => _$PathsToJson(this)['\$routePaths'];
}
