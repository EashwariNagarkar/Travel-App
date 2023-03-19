import 'dart:convert' show json;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:injectable/injectable.dart';
import 'package:travel_app/presentation/app_widget.dart';

import 'injection.dart';

Future<void> main() async {
  configureInjection(Environment.prod);

  // Load JSON data from file
  String jsonData = await rootBundle.loadString('assets/json/data.json');
  Map<String, dynamic> data = json.decode(jsonData);

  runApp(MyApp());
}
