import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaadsystem_flutter/pages/zaadService.dart';

class Kuiibso {
  Future<dynamic> askNumber(BuildContext context) async {
    await showDialog(
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
                      const Text('Fadlan Geli Aqoonsiga Ganacsiga'),
                      TextFormField(
                        controller: enternumberController,
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
                          final numbercontroller = enternumberController.text;
                          if (numbercontroller.isNotEmpty &&
                              numbercontroller ==
                                  userinformation.number.toString()) {
                            Navigator.of(context).pop();

                            setState(() {
                              enternumberController.clear();
                            });
                          } else {
                            Navigator.of(context).pop();
                          }
                        },
                      ),
                    ],
                  )
                ],
              )));
        });
  }

  void setState(Null Function() param0) {}
}
