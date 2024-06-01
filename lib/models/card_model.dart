import 'package:flutter/material.dart';

class CardModal extends StatelessWidget {
  const CardModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ListBody(
          children: [
            Text(
              'ZAAD SERVICE',
              textAlign: TextAlign.left,
            ),
            Text(
              'Fadlan Geli PIN-kaaga',
            ),
            TextField(),
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
                Navigator.of(context).pop();
              },
            ),
          ],
        )
        //  Form(
        //       child: Column(
        //     children: [
        //       const TextField(),
        //        Padding(
        //         padding: const EdgeInsets.all(4.0),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             ElevatedButton(onPressed: () {}, child: const Text('Cancel')),
        //             ElevatedButton(onPressed: () {}, child: const Text('OK'))
        //           ],
        //         ),
        //       )
        //     ],
        //   ))
      ],
    );
  }
}
