import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/about_screen.dart';
import 'package:flutter_application_1/screens/formulaire_screen.dart';
import 'package:flutter_application_1/screens/formulaire_screen1.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/home_screen1.dart';
import 'package:flutter_application_1/screens/inkwell_screen.dart';
import 'package:flutter_application_1/screens/message_screen.dart';
import 'package:flutter_application_1/screens/message_screen1.dart';
import 'package:flutter_application_1/screens/setting_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/setting': (context) => const SettingsScreen(),
        '/message': (context) => const MessageScreen(),
        '/formulaire' : (context) => const FormulaireScreen(),
        '/formulaire1' : (context) => const MyApp(),
        '/inkwell': (context) => const MyAppbtinkwell(),
        '/user' : (context) => const HomeScreen1(),
        '/message1' : (context) => const MessageScreen1(),
      },
    );
  }
}
