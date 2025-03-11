import 'package:flutter/material.dart';
import 'package:netserve/components/theme_notifier.dart';
import 'package:netserve/screens/homepage.dart';
import 'package:netserve/screens/login_page.dart';
import 'package:netserve/screens/settings_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<ThemeNotifier>(builder: (context, themeNotifier, child) {
      //adds an ease animation during theme change
      return AnimatedBuilder(
        animation: themeNotifier,
        builder: (context, _) {
          return MaterialApp(
            title: 'NetServe',
            // initialRoute '/login', // first screen
            initialRoute: 'login', // Set current test screen and uncomment
            theme: themeNotifier.lightTheme, // Light Theme
            darkTheme: themeNotifier.darkTheme, // Dark Theme
            themeMode: themeNotifier.themeMode,
            routes: {
              '/homepage': (context) => const HomePage(),
              '/login': (context) => const LoginPage(),
              '/settings': (context) => const SettingsPage(),
            },
          );
        });
    });
  }
}

