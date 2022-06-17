import 'package:flutter/material.dart';
import '/config/insets.dart';

class DefaultCard extends StatelessWidget {
  const DefaultCard({
    Key? key,
    required this.child,
    var color,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Insets.s),
      child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(137, 54, 54, 54),
          ),
          child:
              Card(color: Theme.of(context).colorScheme.primary, child: child)),
    );
  }
}
