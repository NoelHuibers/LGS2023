import 'package:flutter/material.dart';
import 'package:landesgartenschau2023/pages/map.dart';
import 'package:landesgartenschau2023/pages/settings.dart';
import 'package:landesgartenschau2023/pages/user/login_page.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:landesgartenschau2023/pages/map/widgets/sliding_window.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surfaceTint,
          leading: IconButton(
            icon: const Icon(Icons.account_circle_sharp),
            color: Theme.of(context).colorScheme.onBackground,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
          title: Image.asset("assets/images/logo6.png", width: 270, height: 40),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert_rounded),
              color: Theme.of(context).colorScheme.onBackground,
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
        body: SlidingUpPanel(
          controller: panelController,
          minHeight: 25,
          maxHeight: 600,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
          parallaxEnabled: true,
          parallaxOffset: .5,
          body: const BigMap(),
          panelBuilder: (controller) => SlidePage(
            controller: controller,
            panelController: panelController,
          ),
        ));
  }
}
