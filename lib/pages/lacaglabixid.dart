import 'package:flutter/material.dart';
import 'package:zaadsystem_flutter/models/laamahashirkada.dart';
import 'package:zaadsystem_flutter/pages/zaadService.dart';

import '../models/commonfunctions.dart';

TextEditingController enterlaantaController = TextEditingController();
TextEditingController entermoneyController = TextEditingController();
TextEditingController hubilacagtaController = TextEditingController();

final laantaDeeroMull = LaantaDeeroMull();

class Lacaglabixid {
  //Lacag Dirid operation Functions starts here
  Future<dynamic> askbranchnumber(BuildContext context) async {
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
                        'ZAAD SHILING',
                        textAlign: TextAlign.left,
                      ),
                      const Text('Fadlan Geli aqoonsiga Laanta'),
                      TextFormField(
                        controller: enterlaantaController,
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
                          final numLaantaController =
                              enterlaantaController.text;
                          if (numLaantaController.isNotEmpty &&
                              numLaantaController ==
                                  laantaDeeroMull.aqoonsi.toString()) {
                            Navigator.of(context).pop();
                            waydiilacagta(context);
                            setState(() {
                              enterlaantaController.clear();
                            });
                          } else {
                            displaymessage(
                                'Fadlan Number sax ah geli ama inagu kala wad');
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

  Future<dynamic> waydiilacagta(BuildContext context) async {
    dynamic lacagtalalabaxayo;

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
                      'ZAAD SHILING',
                      textAlign: TextAlign.left,
                    ),
                    const Text('Fadlan Geli lacagta '),
                    TextFormField(
                      controller: entermoneyController,
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
                        final geliLacagtaController = entermoneyController.text;
                        if (geliLacagtaController.isNotEmpty) {
                          lacagtalalabaxayo = entermoneyController.text;
                          Navigator.of(context).pop();
                          hubiLacagta(context, lacagtalalabaxayo);
                          //successMessage(amount);

                          // Navigator.of(context)
                          //     .pop(amount); // Passing amount to pop()
                        } else {
                          displaymessage('Invalid Amount');
                          Navigator.of(context).pop();
                        }
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
    lacagtalalabaxayo = entermoneyController.text;

    return lacagtalalabaxayo;
  }

  Future hubiLacagta(BuildContext context, dynamic lacagtalalabaxayo) async {
    //var lacagtaladiray = await askamount();

    if (lacagtalalabaxayo != null) {
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
                  ListBody(
                    children: [
                      Text(
                        'Ma hubtaa in aad kala baxdid $lacagtalalabaxayo khasnajiga ${laantaDeeroMull.aqoonsi} ** (${laantaDeeroMull.name} ${(laantaDeeroMull.aqoonsi)})',
                      ),
                      const Text('1: Haa'),
                      const Text('2: Maya'),
                      TextFormField(
                        controller: hubilacagtaController,
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
                          try {
                            final hubiController = hubilacagtaController.text;
                            if (hubiController.isNotEmpty &&
                                hubiController == '1') {
                              //userinformation.accountbalance.toString;
                              Navigator.of(context).pop();
                              waadlabaxday(context, lacagtalalabaxayo);

                              setState(() {
                                hubilacagtaController.clear();
                              });
                            } else {
                              displaymessage('Bye hadaa');
                            }
                          } catch (e) {
                            displaymessage('Unkown error is being cough');
                          }
                          // Close the dialog regardless of validation result
                          // Navigator.of(context).pop();
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
  }

  Future waadlabaxday(
    BuildContext context,
    dynamic lacagtalalabaxayo,
  ) async {
    //num yournewBalance = userinformation.accountbalance - num.parse(amount);
    if (lacagtalalabaxayo != null) {
      await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
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
                      Text(
                          'Waxaad $lacagtalalabaxayo kala baxday laanta ${laantaDeeroMull.name} tellerka ${laantaDeeroMull.operator} tariikhda : $tariikhda'),
                      Text('Fadlan sug inta la xaqiijinayo  Mahadsanid'),
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
  }

  void setState(Null Function() param0) {
    enterlaantaController.clear();
    entermoneyController.clear();
    hubilacagtaController.clear();
  }

  // lacagdirid functions end here
}
