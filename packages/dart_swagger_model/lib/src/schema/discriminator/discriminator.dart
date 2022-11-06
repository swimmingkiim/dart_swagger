import 'package:json_annotation/json_annotation.dart';

part 'discriminator.g.dart';

@JsonSerializable()
class Discriminator {
  final String propertyName;
  Map<String, String>? mapping;

  Discriminator({
    required this.propertyName,
    this.mapping,
  });

  factory Discriminator.fromJson(Map<String, dynamic> json) =>
      _$DiscriminatorFromJson(json);

  Map<String, dynamic> toJson() => _$DiscriminatorToJson(this);

  static Map<String, dynamic>? discriminatorToJson(
          Discriminator? discriminator) =>
      discriminator?.toJson();
}
