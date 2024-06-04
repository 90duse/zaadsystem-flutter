import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaadsystem_flutter/models/busineruser_info.dart';
import 'package:zaadsystem_flutter/pages/zaadService.dart';

final businersuserinformation = Businersuserinformation();
TextEditingController entermaclumaadController = TextEditingController();
TextEditingController enterqaansheegadController = TextEditingController();
TextEditingController enterlacagtaController = TextEditingController();
TextEditingController enterhubiController = TextEditingController();
TextEditingController enternumberController = TextEditingController();

final tariikh = DateTime.timestamp();

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
                                  businersuserinformation.number.toString()) {
                            Navigator.of(context).pop();
                            macluumaad(context);
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

  void setState(Null Function() param0) {
    enternumberController.clear();
    entermaclumaadController.clear();
    enterqaansheegadController.clear();
    enterhubiController.clear();
    enterlacagtaController.clear();
  }

  Future macluumaad(BuildContext context) async {
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
                      const Text(
                        'ZAAD SHILING',
                        textAlign: TextAlign.left,
                      ),
                      const Text('Fadlan Geli Macluumaad'),
                      TextFormField(
                        controller: entermaclumaadController,
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
                          final maclumaadController =
                              entermaclumaadController.text;
                          if (maclumaadController.isNotEmpty) {
                            Navigator.of(context).pop();
                            qaansheegta(context);
                            setState(() {
                              entermaclumaadController.clear();
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

  void qaansheegta(BuildContext context) async {
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
                      const Text('Fadlan Geli Numberka Qaansheegadka'),
                      TextFormField(
                        controller: enterqaansheegadController,
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
                          final qaansheegadController =
                              enterqaansheegadController.text;
                          if (qaansheegadController.isNotEmpty &&
                              qaansheegadController ==
                                  businersuserinformation.number) {
                            //var businersusername = businersuserinformation.name;
                            Navigator.of(context).pop();
                            lacagta(context);
                            setState(() {
                              enterqaansheegadController.clear();
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

  Future<dynamic> lacagta(BuildContext context) async {
    String lacagtaladirayo;
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
                    const Text('Geli Lacagta aad u dirayso'),
                    TextFormField(
                      controller: enterlacagtaController,
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
                        final lacagtaController = enterlacagtaController.text;
                        if (lacagtaController.isNotEmpty) {
                          lacagtaladirayo = enterlacagtaController.text;
                          Navigator.of(context).pop();
                          hubi(context, lacagtaladirayo);
                          setState(() {
                            enterlacagtaController.clear();
                          });
                        } else {
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
    lacagtaladirayo = enterlacagtaController.text;
    return lacagtaladirayo;
  }

  Future<dynamic> hubi(BuildContext context, String lacagtaladirayo) async {
    String hubilacagta = lacagtaladirayo;

    if (hubilacagta != null) {
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
                          'Ma hubtaa in aad $hubilacagta udirtid ${businersuserinformation.name}'),
                      const Text('1: Haa'),
                      const Text('2: Maya'),
                      TextFormField(
                        controller: enterhubiController,
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
                          final hubiController = enterhubiController.text;
                          if (hubiController.isNotEmpty &&
                              hubiController == '1') {
                            Navigator.of(context).pop();

                            successMessage(context, hubilacagta);

                            setState(() {
                              enterhubiController.clear();
                            });
                          } else {
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
    }
  }

  void successMessage(BuildContext context, String hubilacagta) {
    num newBalance =
        businersuserinformation.accountbalance - num.parse(hubilacagta);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          //title: const Text('Zaad Service'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text('-ZAAD SHILING-'),
                ),
                Text(
                    ' Tix: ${businersuserinformation.firstname + businersuserinformation.id.toString()}: Waxaad $hubilacagta u dirtay ${businersuserinformation.name} (${businersuserinformation.number}) tar: $tariikh hadhaagaaga cusub waa:  $newBalance'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Center(
                child: Text('OK'),
              ),
            ),
          ],
        );
      },
    );
  }
}
