import 'dart:convert';
import 'dart:io';

import 'package:dart_swagger_model/dart_swagger_model.dart';

void main() async {
  final file = File('./example/test.json');
  final testJson = jsonDecode(file.readAsStringSync());
  final OpenApi openApi = OpenApi.fromJson(testJson);
  print(openApi.toJson());
}
