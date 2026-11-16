import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_manager.dart';
import 'package:proyek_flutter_soal_2/screens/login_page.dart';
import 'package:proyek_flutter_soal_2/screens/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeNotifier,
      builder: (context, currentMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Profil Akhmad Khilman Al Khafid",

          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF005A9C),
              brightness: Brightness.light,
            ),
          ),

          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF1B365D),
              brightness: Brightness.dark,
            ),
          ),

          themeMode: currentMode,

          initialRoute: "/login",

          routes: {
            "/login": (context) => const LoginPage(),
            "/profile": (context) => const ProfilePage(),
          },
        );
      },
    );
  }
}
