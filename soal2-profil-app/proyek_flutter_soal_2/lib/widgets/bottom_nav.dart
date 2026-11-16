import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_extension.dart';

class MyBotttomNav extends StatelessWidget {
  const MyBotttomNav({super.key, required this.halamanAktif});

  final int halamanAktif;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: context.themeColor.onPrimaryContainer,

      indicatorColor: context.warningColor,
      labelTextStyle: WidgetStatePropertyAll(
        TextStyle(
          color: context.themeColor.primaryContainer,
          fontWeight: FontWeight.bold,
        ),
      ),

      selectedIndex: halamanAktif,
      onDestinationSelected: (value) {
        if (value == halamanAktif) return;

        switch (value) {
          case 0:
            Navigator.pushReplacementNamed(context, "/profile");
            break;
          case 1:
            Navigator.pushReplacementNamed(context, "/about");
            break;
        }
      },
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.person, color: context.themeColor.primaryContainer),
          label: "Profile",
        ),
        NavigationDestination(
          icon: Icon(Icons.info, color: context.themeColor.primaryContainer),
          label: "About",
        ),
      ],
    );
  }
}
