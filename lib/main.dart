import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pCommerce/routes/route_destinations.dart';
import 'package:pCommerce/routes/route_names.dart';
import 'package:pCommerce/utils/config.dart';
import 'package:pCommerce/utils/languages.dart';
import 'package:pCommerce/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConfig.appName,

      // Themes
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.dark,

      // Localizations
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),

      // Routes
      getPages: RouteDestinations.pages,
      initialRoute: RouteNames.splash,
    );
  }
}
