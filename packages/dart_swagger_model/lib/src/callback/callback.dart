import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/path_item/path_item.dart';
import 'package:dart_swagger_model/src/callback/callback_or_reference.dart';

part 'callback.g.dart';

@JsonSerializable()
class Callback {
  @JsonKey(toJson: PathItem.pathItemsToJson)
  final Map<String, PathItem> $callbacks;

  Callback({
    required this.$callbacks,
  });

  factory Callback.fromJson(Map<String, dynamic> json) {
    return _$CallbackFromJson({'\$callbacks': json});
  }

  Map<String, dynamic> toJson() => _$CallbackToJson(this)['\$callbacks'];

  static Map<String, dynamic>? nullableCallbacksToJson(
          Map<String, CallbackOrReference>? callbacks) =>
      callbacks?.map((key, value) => MapEntry(key, value.toJson()));
}
