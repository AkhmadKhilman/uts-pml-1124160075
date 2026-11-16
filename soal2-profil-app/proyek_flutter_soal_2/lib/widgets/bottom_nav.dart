import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_extension.dart';

class MyBotttomNav extends StatelessWidget {
  const MyBotttomNav({super.key, required this.halamanAktif});

  final int halamanAktif;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: context.themeColor.onPrimaryContainer,

      unselectedLabelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      unselectedItemColor: context.themeColor.primaryContainer,

      selectedLabelStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      selectedItemColor: context.warningColor,

      currentIndex: halamanAktif,
      onTap: (value) {
        if (value == halamanAktif) return;

        switch (value) {
          case 0:
            Navigator.pushReplacementNamed(context, "/about");
            break;
          case 1:
            Navigator.pushReplacementNamed(context, "/profile");
            break;
          case 2:
            Navigator.pushReplacementNamed(context, "/login");
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Logout"),
      ],
    );
  }
}
