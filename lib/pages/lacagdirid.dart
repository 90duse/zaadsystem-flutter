import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaadsystem_flutter/pages/kuiibso.dart';
import 'package:zaadsystem_flutter/pages/zaadService.dart';

import '../models/commonfunctions.dart';

TextEditingController chooseController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController enternumberController = TextEditingController();
TextEditingController enteramountController = TextEditingController();
TextEditingController enterpasswordController = TextEditingController();
TextEditingController checkmoneyController = TextEditingController();

class Lacagdirid {
  //Lacag Dirid operation Functions starts here
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
                      const Text('Geli Numberka aad lacagta u dirayso'),
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
                            askamount(context);
                            setState(() {
                              enternumberController.clear();
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

  Future<dynamic> askamount(BuildContext context) async {
    dynamic amount;

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
                    const Text('Geli lacagta aad u dirayso'),
                    TextFormField(
                      controller: enteramountController,
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
                        final amountcontroller = enteramountController.text;
                        if (amountcontroller.isNotEmpty) {
                          amount = enteramountController.text;
                          Navigator.of(context).pop();
                          asktocheck(context, amount);
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
    amount = enteramountController.text;

    return amount;
  }

  Future asktocheck(BuildContext context, dynamic amount) async {
    //var lacagtaladiray = await askamount();

    if (amount != null) {
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
                      Text(
                        'Ma hubtaa in aad $amount udirtid ${userinformation.name} (${userinformation.number})',
                      ),
                      const Text('1: Haa'),
                      const Text('2: Maya'),
                      TextFormField(
                        controller: checkmoneyController,
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
                            final checkcontroller = checkmoneyController.text;
                            if (checkcontroller.isNotEmpty &&
                                checkcontroller == '1') {
                              //userinformation.accountbalance.toString;
                              Navigator.of(context).pop();
                              successMessage(context, amount);

                              setState(() {
                                checkmoneyController.clear();
                              });
                            } else {
                              displaymessage('PIN ka aad gelisay waa qalad');
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

  Future successMessage(
    BuildContext context,
    dynamic amount,
  ) async {
    num yournewBalance = userinformation.accountbalance - num.parse(amount);
    if (amount != null) {
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
                          'Waxaad SLSH$amount u dirtay ${userinformation.name} tariikhda : $tariikhda Hadhaagaagu waa : SLSH $yournewBalance')
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
    checkmoneyController.clear();
    enternumberController.clear();
    enteramountController.clear();
    enterhubiController.clear();
    enterlacagtaController.clear();
  }

  // lacagdirid functions end here
}
