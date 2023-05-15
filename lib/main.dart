import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:registro_civil_apk/app.dart';
import 'package:registro_civil_apk/bootstrap.dart';
import 'package:registro_civil_apk/data/utils/methods.dart';

void main() async {
  await initMethod();
  await bootstrap(App.new);
}
