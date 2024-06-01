import 'package:flutter/material.dart';
import 'package:zaadsystem_flutter/models/Zaadpopup_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZAAD SERVICE'),
      ),
      floatingActionButton: const Zaadfirstpopup(),
      body: const Column(),
    );
  }
}
