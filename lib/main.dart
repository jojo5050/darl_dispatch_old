import 'dart:io';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:darl_dispatch/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeAppForPath();
  runApp(const App());
}

void initializeAppForPath() async{

  var path = Directory.current.path;
  var dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
}


