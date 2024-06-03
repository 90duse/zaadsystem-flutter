import 'package:flutter/material.dart';

class MoneyTransactionDialog extends StatefulWidget {
  @override
  _MoneyTransactionDialogState createState() => _MoneyTransactionDialogState();
}

class _MoneyTransactionDialogState extends State<MoneyTransactionDialog> {
  final TextEditingController enterAmountController = TextEditingController();
  final TextEditingController checkMoneyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(); // You can return your main widget here
  }

  Future<String?> askAmount(BuildContext context) async {
    String? amount;
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Send instruction'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('ZAAD SHILING', textAlign: TextAlign.left),
                const Text('Geli lacagta aad u dirayso'),
                TextFormField(
                  controller: enterAmountController,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
            const Text("|"),
            TextButton(
              onPressed: () {
                final amountController = enterAmountController.text;
                if (amountController.isNotEmpty) {
                  amount = amountController;
                  Navigator.of(context).pop();
                  askToCheck(amount);
                } else {
                  displayMessage('Invalid Amount');
                }
              },
              child: const Text('SEND'),
            ),
          ],
        );
      },
    );
    return amount;
  }

  Future<void> askToCheck(String? amount) async {
    if (amount != null) {
      await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Send instruction'),
            content: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('ZAAD SHILING', textAlign: TextAlign.left),
                  Text('Ma hubtaa in aad u dirayso $amount'),
                  TextFormField(
                    controller: checkMoneyController,
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
              const Text("|"),
              TextButton(
                onPressed: () {
                  final checkController = checkMoneyController.text;
                  if (checkController.isNotEmpty &&
                      checkController == 'userPIN') {
                    // Perform any action you need after successful validation
                    checkMoneyController.clear();
                  } else {
                    displayMessage('Invalid PIN');
                  }
                  Navigator.of(context).pop();
                },
                child: const Text('SEND'),
              ),
            ],
          );
        },
      );
    }
  }

  void displayMessage(String message) {
    // Implement how you want to display the message to the user
  }
}
