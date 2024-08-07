import 'dart:developer';
import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:zaadsystem_flutter/models/commonfunctions.dart';
import 'package:zaadsystem_flutter/models/services.dart';
import 'package:zaadsystem_flutter/models/user_information.dart';
import 'package:zaadsystem_flutter/pages/evoucher.dart';
import 'package:zaadsystem_flutter/pages/itusdhaqdhaqaaq.dart';
import 'package:zaadsystem_flutter/pages/itushadhaaga.dart';
import 'package:zaadsystem_flutter/pages/kuiibso.dart';
import 'package:zaadsystem_flutter/pages/lacagdirid.dart';
import 'package:zaadsystem_flutter/pages/lacaglabixid.dart';

class ZaadClass extends StatefulWidget {
  const ZaadClass({super.key});

  @override
  State<ZaadClass> createState() => _ZaadClassState();
}

TextEditingController chooseController = TextEditingController();
TextEditingController passwordController = TextEditingController();

String password = '';
final userinformation = Userinformation();
final services = Zaadervicesclass();
final tariikhda = DateTime(2024);
final kuiibso = Kuiibso();
final lacagdirid = Lacagdirid();
final itushadhaaga = Itushadhaaga();
final lacaglabixid = Lacaglabixid();
final itusdhaqdhaqaaq = ItusDhaqdhaqaaq();
final evoucher = Evoucher();

//passwordformkey = GlobalKey();
final passwordformkey = GlobalKey<FormState>();

class _ZaadClassState extends State<ZaadClass> {
  final formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: FloatingActionButton(
        //backgroundColor: Colors.white,
        onPressed: () {
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
                            'ZAAD SERVICE',
                            textAlign: TextAlign.left,
                          ),
                          const Text(
                            'Fadlan Geli PIN-kaaga',
                          ),
                          Form(
                            key: passwordformkey,
                            child: Column(
                              children: [
                                TextFormField(
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(4),
                                  ],
                                  controller: passwordController,
                                  keyboardType: TextInputType.number,
                                  onFieldSubmitted: (value) {
                                    passwordController.clear();
                                  },
                                  // validator: (value) {
                                  //   if (passwordController == null) {
                                  //     return 'Can not be null ';
                                  //   } else {
                                  //     return null;
                                  //   }
                                  // },
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                        password = passwordController.text;
                                        try {
                                          if (password.isNotEmpty &&
                                              password ==
                                                  userinformation.password) {
                                            Navigator.of(context).pop();
                                            zaadservices();
                                            setState(() {
                                              passwordController.clear();
                                            });
                                          } else {
                                            print('Password is Required');
                                            Navigator.of(context).pop();
                                          }
                                        } catch (e) {
                                          displaymessage(
                                              'Unkown error is cought ...');
                                        }
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
                );
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  zaadservices() {
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
                      '5: Itus Dhaqdhaqaaq',
                    ),
                    const Text(
                      '6: E-voucher',
                    ),
                    const Text(
                      '7: Dara-Salaam Bank',
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

                          if (choose == services.itushadhaaga.toString()) {
                            Navigator.of(context).pop();
                            itushadhaaga.itushadhaaga(context);
                            setState(() {
                              chooseController.clear();
                            });
                          } else if (choose == services.lacagdirid.toString()) {
                            Navigator.of(context).pop();
                            lacagdirid.askNumber(context);
                            setState(() {
                              chooseController.clear();
                            });
                          } else if (choose == services.kuiibso.toString()) {
                            Navigator.of(context).pop();
                            kuiibso.askNumber(context);

                            setState(() {
                              chooseController.clear();
                            });
                          } else if (choose ==
                              services.lacaglabixid.toString()) {
                            Navigator.of(context).pop();
                            lacaglabixid.askbranchnumber(context);

                            setState(() {
                              chooseController.clear();
                            });
                          } else if (choose ==
                              services.itusdhaqdhaqaaq.toString()) {
                            Navigator.of(context).pop();
                            itusdhaqdhaqaaq.itusdhaqdhaqaaq(context);

                            setState(() {
                              chooseController.clear();
                            });
                          } else if (choose == services.evoucher.toString()) {
                            Navigator.of(context).pop();
                            evoucher.itusEvoucher(
                              context,
                            );

                            setState(() {
                              chooseController.clear();
                            });
                          } else if (choose ==
                              services.darasalambank.toString()) {
                            Navigator.of(context).pop();
                            evoucher.itusEvoucher(
                              context,
                            );

                            setState(() {
                              chooseController.clear();
                            });
                          }
                        }),
                  ],
                )
              ],
            )),
          );
        });
  }
}
