import 'package:json_annotation/json_annotation.dart';

part 'security_requirement.g.dart';

@JsonSerializable()
class SecurityRequirement {
  final Map<String, List<String>> $securityRequirement;

  SecurityRequirement({
    required this.$securityRequirement,
  });

  factory SecurityRequirement.fromJson(Map<String, dynamic> json) {
    return _$SecurityRequirementFromJson({'\$securityRequirement': json});
  }

  Map<String, dynamic> toJson() =>
      _$SecurityRequirementToJson(this)['\$securityRequirement'];

  static Map<String, dynamic>? nullableSecurityRequirementToJson(
          SecurityRequirement? securityRequirement) =>
      securityRequirement?.toJson();
}
