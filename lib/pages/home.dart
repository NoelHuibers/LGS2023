import 'package:flutter/material.dart';
import 'package:test/pages/home/widgets/RoundContainer.dart';
import 'login.dart';
import 'settings.dart';
import '/config/palette.dart';
import 'package:test/pages/events.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.account_circle_sharp),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
          ),
          title: const Center(child: Text("Landesgartenschau 2022")),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Settings()),
                );
              },
            )
          ],
          actionsIconTheme: const IconThemeData(size: 32),
        ),
        body: Column(children: [
          Flexible(
              flex: 2,
              child: Row(children: [
                Flexible(
                    flex: 1,
                    child: InkWell(child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Palette.secondaryDark,
                        ),
                        margin: const EdgeInsets.all(20.0),
                        ),onTap:() { 
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Veranstaltungen()),
                         );
                        },)),
                Flexible(
                    flex: 1,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Palette.secondary),
                        margin: const EdgeInsets.all(20.0)))
                        
              ])),
          const RoundContainer(color: Palette.primary, flex: 3),
        ]));
  }
}
