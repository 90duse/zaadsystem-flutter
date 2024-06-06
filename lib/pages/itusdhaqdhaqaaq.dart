import 'package:flutter/material.dart';
import 'package:zaadsystem_flutter/models/busineruser_info.dart';
import 'package:zaadsystem_flutter/models/user_information.dart';
import 'package:zaadsystem_flutter/pages/kuiibso.dart';
import 'package:zaadsystem_flutter/pages/zaadService.dart';

import '../models/commonfunctions.dart';

TextEditingController itusdhaqdhaqaaqController = TextEditingController();
final businersuserinformation = Businersuserinformation();
final userinformation = Userinformation();

final s = ZaadClass();

class ItusDhaqdhaqaaq {
  Future<dynamic> itusdhaqdhaqaaq(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              //title: const Text('Send instruction'),
              content: SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListBody(
                    children: [
                      const Text(
                        'Itus Dhaqdhaqaaq',
                        textAlign: TextAlign.left,
                      ),
                      const Text('1. dhaqdhaqaaq kaliya'),
                      const Text('2. warbixin kooban'),
                      const Text('00. dib u noqo'),
                      const Text('10. ka bax'),
                      TextFormField(
                        controller: itusdhaqdhaqaaqController,
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
                          final tusController = itusdhaqdhaqaaqController.text;
                          if (tusController.isNotEmpty &&
                              tusController == '1') {
                            Navigator.of(context).pop();
                            tusdhaqdhaqaaqKaliya(context);
                            setState(() {
                              itusdhaqdhaqaaqController.clear();
                            });
                          } else if (tusController == '2') {
                            Navigator.of(context).pop();
                            warbixinKooban(context);
                          } else if (tusController == '00') {
                            Navigator.pop(context);

                            itusdhaqdhaqaaqController.clear();
                          } else if (tusController == '10') {
                            Navigator.of(context).pop();
                            itusdhaqdhaqaaqController.clear();
                          } else {
                            displaymessage('message');
                          }
                        },
                      ),
                    ],
                  )
                ],
              )));
        });
  }

  Future<dynamic> tusdhaqdhaqaaqKaliya(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          //title: const Text('Send instruction'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListBody(
                  children: [
                    const Text(
                      '-ZAAD SHILING-',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                        'Tix: [${businersuserinformation.number}${businersuserinformation.id}] waxaad ${userinformation.accountbalance - 200} u dirtay ${businersuserinformation.name} ${(businersuserinformation.number)} tariikhda $tariikh'),
                    // TextFormField(
                    //   controller: entermoneyController,
                    // ),
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
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future warbixinKooban(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          title: const Text('Send Instruction'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const ListBody(
                  children: [
                    Text(
                      '-ZAAD SHILING-',
                    ),
                    Text('Warbixin kooban ayaa laguu soo dirayaa dhawaan'),
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
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void setState(Null Function() param0) {
    itusdhaqdhaqaaqController.clear();
  }
}
