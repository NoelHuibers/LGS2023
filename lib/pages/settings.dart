import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:landesgartenschau2023/pages/settings/widgets/app_info.dart';
import 'package:landesgartenschau2023/pages/login/widgets/user_tools.dart';
import '/pages/home/widgets/default_card.dart';
import 'settings/widgets/darkmode.dart';
import 'settings/widgets/impressum_button.dart';
import 'settings/widgets/language.dart';

/*
Die Datei ist für das Bilden
der Setting Page in der App
*/
class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surfaceTint,
          leading:
              BackButton(color: Theme.of(context).colorScheme.onBackground),
          title: Text(
            AppLocalizations.of(context)!.settings,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.h,
                  ),
                  const DefaultCard(child: Darkmode()),
                  const DefaultCard(child: Language()),
                  const DefaultCard(child: AppInfoButton()),
                  SizedBox(
                    height: 300.h,
                  ),
                  const Impressumbutton(),
                  buildText(
                      context,
                      '© Landesgartenschau Höxter 2023 GmbH \n                   ${AppLocalizations.of(context)!.allrightsreserved}',
                      10),
                ],
              )),
        ));
  }
}
