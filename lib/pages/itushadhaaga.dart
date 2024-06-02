import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Itushadhaagaclass extends StatefulWidget {
  const Itushadhaagaclass({super.key});

  @override
  State<Itushadhaagaclass> createState() => _ItushadhaagaclassState();
}

class _ItushadhaagaclassState extends State<Itushadhaagaclass> {
  TextEditingController chooseController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () {
      itushadhaaga();
    });
  }

  itushadhaaga() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              title: const Text('Send instruction'),
              content: SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListBody(
                    children: [
                      const Text(
                        'ZAAD SHILING',
                        textAlign: TextAlign.left,
                      ),
                      const Text(
                        '1: Itus Hadhaaga',
                      ),
                      const Text(
                        '2: Lacag Dirid',
                      ),
                      const Text(
                        '3: Lacag Labixid',
                      ),
                      const Text(
                        '4: Ku iibso',
                      ),
                      const Text(
                        '10: Ka bax',
                      ),
                      TextFormField(
                        controller: chooseController,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        child: const Text('Close'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      const Text("|"),
                      TextButton(
                        child: const Text('SEND'),
                        onPressed: () {
                          final choose = chooseController.text;
                          var services = {1: 'Itus Hadhaaga', 2: "Lacag Dirid"};
                          if (choose == services[0])
                            Navigator.of(context).pop();
                        },
                      ),
                    ],
                  )
                ],
              )));
        });
  }
}
