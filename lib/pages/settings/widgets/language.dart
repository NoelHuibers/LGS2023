import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:provider/provider.dart';

import '/models/l10n/l10n.dart';
import '/services/provider/locale_provider.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _Language();
}

class _Language extends State<Language> {
  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final flag = L10n.getFlag(locale.languageCode);

    return ListTile(
        leading: Icon(
          Icons.language,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        title: Text(
          AppLocalizations.of(context)!.language,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        trailing: Container(
            margin: const EdgeInsets.only(right: 6.0),
            child: DropdownButton(
                icon: flag,
                items: L10n.all.map(
                  (locale) {
                    final displayflag = L10n.getFlag(locale.languageCode);

                    return DropdownMenuItem(
                      child: displayflag,
                      value: locale,
                      onTap: () {
                        final provider =
                            Provider.of<LocaleProvider>(context, listen: false);
                        provider.setLocale(locale);
                      },
                    );
                  },
                ).toList(),
                onChanged: (_) {})));
  }
}
