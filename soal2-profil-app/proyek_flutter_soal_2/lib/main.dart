import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profil Akhmad Khilman Al Khafid",

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF005A9C),
          brightness: Brightness.light,
        ),
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF1B365D),
          brightness: Brightness.dark,
        ),
      ),

      themeMode: ThemeMode.system,

      home: LoginPage(),
    );
  }
}
