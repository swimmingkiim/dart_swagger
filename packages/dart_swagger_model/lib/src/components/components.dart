import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/callback/callback.dart';
import 'package:dart_swagger_model/src/callback/callback_or_reference.dart';
import 'package:dart_swagger_model/src/example/example.dart';
import 'package:dart_swagger_model/src/example/example_or_reference.dart';
import 'package:dart_swagger_model/src/header/header.dart';
import 'package:dart_swagger_model/src/header/header_or_reference.dart';
import 'package:dart_swagger_model/src/link/link.dart';
import 'package:dart_swagger_model/src/link/link_or_reference.dart';
import 'package:dart_swagger_model/src/parameter/parameter.dart';
import 'package:dart_swagger_model/src/parameter/parameter_or_reference.dart';
import 'package:dart_swagger_model/src/request_body/request_body.dart';
import 'package:dart_swagger_model/src/request_body/request_body_or_reference.dart';
import 'package:dart_swagger_model/src/response/response.dart';
import 'package:dart_swagger_model/src/response/response_or_reference.dart';
import 'package:dart_swagger_model/src/schema/schema.dart';
import 'package:dart_swagger_model/src/schema/schema_or_reference.dart';
import 'package:dart_swagger_model/src/security_scheme/security_scheme.dart';
import 'package:dart_swagger_model/src/security_scheme/security_scheme_or_reference.dart';

part 'components.g.dart';

@JsonSerializable()
class Components {
  @JsonKey(toJson: Schema.nullableSchemasToJson)
  Map<String, SchemaOrReference>? schemas;
  @JsonKey(toJson: Response.nullableResponsesToJson)
  Map<String, ResponseOrReference>? responses;
  @JsonKey(toJson: Parameter.nullableParametersToJson)
  Map<String, ParameterOrReference>? parameters;
  @JsonKey(toJson: Example.examplesToJson)
  Map<String, ExampleOrReference>? examples;
  @JsonKey(toJson: RequestBody.nullableRequestBodiesOrReferenceToJson)
  Map<String, RequestBodyOrReference>? requestBodies;
  @JsonKey(toJson: Header.headersToJson)
  Map<String, HeaderOrReference>? headers;
  @JsonKey(toJson: SecurityScheme.nullableSecuritySchemesOrReferenceToJson)
  Map<String, SecuritySchemeOrReference>? securitySchemes;
  @JsonKey(toJson: Link.linksToJson)
  Map<String, LinkOrReference>? links;
  @JsonKey(toJson: Callback.nullableCallbacksToJson)
  Map<String, CallbackOrReference>? callbacks;

  Components({
    this.schemas,
    this.responses,
    this.parameters,
    this.examples,
    this.requestBodies,
    this.headers,
    this.securitySchemes,
    this.links,
    this.callbacks,
  });

  factory Components.fromJson(Map<String, dynamic> json) =>
      _$ComponentsFromJson(json);

  Map<String, dynamic> toJson() => _$ComponentsToJson(this);

  static Map<String, dynamic>? nullableComponentsToJson(
          Components? components) =>
      components?.toJson();
}
