import 'dart:convert';
import 'package:randexp/randexp.dart';

import 'service/input.dart';
import 'service/save_to_json.dart';

regexToString() {
  var stringNumber = 50;
  List<String> generatedString = [];

  final regex = InputRegex.inputRegex(r'b[o0]l[a4]');

  for (var i = 1; i < stringNumber; i++) {
    var randExp = RandExp(regex);

    String testString = randExp.gen();
    generatedString.add(testString);
  }

  Set<String> uniqString = Set<String>.from(generatedString);
  List<String> finalString = uniqString.toList();

  Map<String, dynamic> data = {
    'datas': finalString,
  };

  String jsonContent = jsonEncode(data);

  SaveToJson.save(jsonContent);
}

void main(List<String> args) {
  regexToString();
}
