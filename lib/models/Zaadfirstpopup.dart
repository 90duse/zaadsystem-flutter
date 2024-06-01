import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Zaadfirstpopup extends StatefulWidget {
  const Zaadfirstpopup({super.key});

  @override
  State<Zaadfirstpopup> createState() => _ZaadfirstpopupState();
}

TextEditingController passwordController = TextEditingController();
String password = '';
int userpassword = 111;

//passwordformkey = GlobalKey();
final passwordformkey = GlobalKey<FormState>();

class _ZaadfirstpopupState extends State<Zaadfirstpopup> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
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
                                controller: passwordController,
                                keyboardType: TextInputType.number,
                              ),
                              //Text(passwordController.text),
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
                                                userpassword.toString()) {
                                          Navigator.of(context).pushNamed(
                                              "lib/pages/zaadService.dart");
                                        } else {
                                          Navigator.of(context).pop();
                                        }
                                      } catch (e) {
                                        print('Unkown error is cought ...');
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
    );
  }
}
