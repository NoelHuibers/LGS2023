import 'package:flutter/material.dart';
import 'impressum/view_impressum.dart';

class Impressum extends StatelessWidget {
  const Impressum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Impressum',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        body: const Impressumview());
  }
}
