import 'package:dart_swagger_model/src/callback/callback.dart';
import 'package:dart_swagger_model/src/callback/callback_or_reference.dart';
import 'package:dart_swagger_model/src/request_body/request_body.dart';
import 'package:dart_swagger_model/src/request_body/request_body_or_reference.dart';
import 'package:dart_swagger_model/src/responses/responses.dart';
import 'package:dart_swagger_model/src/security_requirement/security_requirement.dart';
import 'package:json_annotation/json_annotation.dart';

// sub models
import 'package:dart_swagger_model/src/server/server.dart';
import 'package:dart_swagger_model/src/external_documentation/external_documentation.dart';
import 'package:dart_swagger_model/src/parameter/parameter.dart';
import 'package:dart_swagger_model/src/parameter/parameter_or_reference.dart';

part 'operation.g.dart';

@JsonSerializable()
class Operation {
  @JsonKey(toJson: Responses.responsesToJson)
  Responses responses;
  List<String>? tags;
  String? summary;
  String? description;
  String? operationId;
  @JsonKey(toJson: Server.serversToJson)
  List<Server>? servers;
  @JsonKey(toJson: Parameter.parametersToJson)
  List<ParameterOrReference>? parameters;
  @JsonKey(toJson: ExternalDocumentation.externalDocumentationToJson)
  ExternalDocumentation? externalDocs;
  @JsonKey(toJson: RequestBody.requestBodyOrReferenceToJson)
  RequestBodyOrReference? requestBody;
  @JsonKey(toJson: Callback.nullableCallbacksToJson)
  Map<String, CallbackOrReference>? callbacks;
  bool? deprecated;
  @JsonKey(toJson: SecurityRequirement.nullableSecurityRequirementToJson)
  SecurityRequirement? securityRequirement;

  Operation({
    required this.responses,
    this.tags,
    this.summary,
    this.description,
    this.operationId,
    this.servers,
    this.parameters,
    this.externalDocs,
    this.requestBody,
    this.callbacks,
    this.deprecated = false,
    this.securityRequirement,
  });

  factory Operation.fromJson(Map<String, dynamic> json) =>
      _$OperationFromJson(json);

  Map<String, dynamic> toJson() => _$OperationToJson(this);

  static Map<String, dynamic>? operationToJson(Operation? operation) =>
      operation?.toJson();
}
