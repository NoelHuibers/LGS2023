import 'package:flutter/material.dart';

import '/pages/impressum.dart';

class Impressumbutton extends StatelessWidget {
  const Impressumbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 10,
        child: ElevatedButton(
            style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0.5),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(10)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff22C95C)),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Impressum()),
              );
            },
            child: const FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                "Impressum",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            )));
  }
}
