import 'package:best/home_view.dart';
import 'package:best/l10n/gen/app_localizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      localizationsDelegates: AppLocalizations.localizationsDelegates,

      locale: kDebugMode ? const Locale("tr","TR") : null,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'instagram',
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
