import 'package:flutter/material.dart';
import 'package:zaadsystem_flutter/pages/home.dart';
import 'package:zaadsystem_flutter/pages/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZAAD SERVICE',
      home: const Home(),
      routes: approutes,
    );
  }
}
