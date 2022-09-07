import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Theme.of(context).colorScheme.primary),
        title: Text(
          'Login Page',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: const Center(
        child: Text('Login Page'),
      ),
    );
  }
}
