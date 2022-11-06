import 'package:json_annotation/json_annotation.dart';

part 'license.g.dart';

@JsonSerializable()
class License {
  final String name;
  String? url;

  License({
    required this.name,
    this.url,
  });

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseToJson(this);

  static Map<String, dynamic>? licenseToJson(License? license) =>
      license?.toJson();
}
