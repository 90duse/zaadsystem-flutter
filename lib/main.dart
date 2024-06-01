import 'package:flutter/material.dart';
import 'package:zaadsystem_flutter/models/Zaadpopup_model.dart';
import 'package:zaadsystem_flutter/models/card_model.dart';
import 'package:zaadsystem_flutter/pages/home.dart';
import 'package:zaadsystem_flutter/pages/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Talowadaag App',
      home: Home(),
      routes: approutes,
    );
  }
}
