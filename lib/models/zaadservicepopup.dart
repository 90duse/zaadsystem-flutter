import 'package:flutter/material.dart';

class Zaadservices extends StatefulWidget {
  const Zaadservices({super.key});

  @override
  State<Zaadservices> createState() => _ZaadservicesState();
}

class _ZaadservicesState extends State<Zaadservices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
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
                          Text(
                            'ZAAD SHILING',
                            textAlign: TextAlign.left,
                          ),
                          const Text(
                            'Fadlan Geli PIN-kaaga',
                          ),
                          const Text(
                            'Fadlan Geli PIN-kaaga',
                          ),
                          const Text(
                            'Fadlan Geli PIN-kaaga',
                          ),
                          const Text(
                            'Fadlan Geli PIN-kaaga',
                          ),
                          TextFormField(
                              // controller: passwordController,
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
                              // if (passwordController == 1111) {
                              //   Navigator.pushNamed(
                              //       context, "lib/pages/zaadService.dart");
                              // }
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      )
                    ],
                  )),
                );
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
