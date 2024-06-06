import 'package:flutter/material.dart';

import '../models/commonfunctions.dart';

TextEditingController dooroEvoucherController = TextEditingController();
TextEditingController kushubolacagController = TextEditingController();
TextEditingController hubilacagtaController = TextEditingController();
TextEditingController ugushubqofkaleController = TextEditingController();

class Evoucher {
  Future<dynamic> itusEvoucher(BuildContext context) async {
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
                        'E-Voucher',
                        textAlign: TextAlign.left,
                      ),
                      const Text('1. kushubo lacag'),
                      const Text('2. ugu shub qof kale'),
                      const Text('3. Internet bundle recharge'),
                      const Text('00. dib u noqo/Back'),
                      const Text('11. ka bax'),
                      TextFormField(
                        controller: dooroEvoucherController,
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
                          final evoucherController =
                              dooroEvoucherController.text;
                          if (evoucherController.isNotEmpty &&
                              evoucherController == '1') {
                            Navigator.of(context).pop();
                            kushubolacag(context);
                            setState(() {
                              dooroEvoucherController.clear();
                            });
                          } else if (evoucherController == '2') {
                            Navigator.of(context).pop();
                            ugushubqofkale(context);
                          } else if (evoucherController == '00') {
                            Navigator.pop(context);

                            dooroEvoucherController.clear();
                          } else if (evoucherController == '11') {
                            Navigator.of(context).pop();
                            dooroEvoucherController.clear();
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

  Future<dynamic> kushubolacag(BuildContext context) async {
    dynamic lacagta;
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
                    const Text('Fadlan Geli Lacagta'),
                    TextFormField(
                      controller: kushubolacagController,
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
                    TextButton(
                      child: const Text('Send'),
                      onPressed: () {
                        final kushubocontrollor = kushubolacagController.text;
                        if (kushubocontrollor.isNotEmpty) {
                          lacagta = kushubolacagController.text;
                          Navigator.of(context).pop();
                          hubilacagta(context, lacagta);
                          setState(() {
                            kushubolacagController.clear();
                          });
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
    lacagta = kushubolacagController.text;
    return lacagta;
  }

  Future<dynamic> hubilacagta(BuildContext context, dynamic lacagta) async {
    dynamic lacagtalagushubanayo = lacagta;
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
                      Text(
                        'Ma Hubtaa in aad ku shubanaysid $lacagtalagushubanayo oo evoucher ah',
                        textAlign: TextAlign.left,
                      ),
                      const Text('1. Haa'),
                      const Text('2. maya'),
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
                          final hubiController = hubilacagtaController.text;
                          if (hubiController.isNotEmpty &&
                              hubiController == '1') {
                            Navigator.of(context).pop();
                            lacagAyaadkushubatay(context, lacagta);

                            setState(() {
                              hubilacagtaController.clear();
                            });
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

  Future<dynamic> lacagAyaadkushubatay(
      BuildContext context, dynamic lacagta) async {
    dynamic lacagtalagushubtay = lacagta;
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
                    ),
                    Text(
                        " $lacagtalagushubtay ayaad ku shubatay, isticmaal wanaagsan ")
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

  // ugu shub qof kale operation

  Future ugushubqofkale(BuildContext context) async {
    final numberka;
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
                      '-ZAAD SHILING-',
                    ),
                    const Text('Geli Numberka aad ugu shubaysid'),
                    TextFormField(
                      controller: ugushubqofkaleController,
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
                    TextButton(
                      child: const Text('Send'),
                      onPressed: () {
                        final ugushub = ugushubqofkaleController.text;
                        if (ugushub.isNotEmpty) {
                          final numberka = ugushubqofkaleController.text;
                          hubi(context, numberka);
                        }
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
    numberka = ugushubqofkaleController.text;
    return numberka;
  }

  Future<dynamic> hubi(BuildContext context, dynamic numberka) async {
    dynamic lacagtalagushubanayo = numberka;
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
                      Text(
                        'Ma Hubtaa in aad ku shubanaysid $numberka oo evoucher ah',
                        textAlign: TextAlign.left,
                      ),
                      const Text('1. Haa'),
                      const Text('2. maya'),
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
                          final hubiController = hubilacagtaController.text;
                          if (hubiController.isNotEmpty &&
                              hubiController == '1') {
                            Navigator.of(context).pop();
                            lacagAyaadkushubatay(context, lacagta);

                            setState(() {
                              hubilacagtaController.clear();
                            });
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

  void setState(Null Function() param0) {
    dooroEvoucherController.clear();
    kushubolacagController.clear();
    hubilacagtaController.clear();
  }
}
