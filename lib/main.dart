import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:provider/provider.dart';

import 'pages/home.dart';
import 'models/l10n/l10n.dart';
import 'services/provider/locale_provider.dart';
import 'services/provider/darkmode_provider.dart';
import 'config/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider<LocaleProvider>(
              create: (_) => LocaleProvider(const Locale("en"))),
          ChangeNotifierProvider<ColorProvider>(create: (_) => ColorProvider()),
        ],
        builder: (context, child) {
          final languageProvider = Provider.of<LocaleProvider>(context);
          final colorProvider = Provider.of<ColorProvider>(context);
          return MaterialApp(
            title: 'LGS2023',
            themeMode:
                colorProvider.isDarkMode ? ThemeMode.light : ThemeMode.dark,
            theme: Palette.lightTheme,
            darkTheme: Palette.darkTheme,
            locale: languageProvider.locale,
            supportedLocales: L10n.all,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate
            ],
            home: const Home(),
          );
        },
      );
}
