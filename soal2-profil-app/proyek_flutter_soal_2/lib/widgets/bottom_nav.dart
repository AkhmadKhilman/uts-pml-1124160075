import 'package:flutter/material.dart';

class MyBotttomNav extends StatelessWidget {
  const MyBotttomNav({super.key, required this.halamanAktif});

  final int halamanAktif;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: halamanAktif,
      onTap: (value) {
        if (value == halamanAktif) return;

        if (value == 0) {
          Navigator.pushReplacementNamed(context, "/about");
        } else if (value == 1) {
          Navigator.pushReplacementNamed(context, "/profile");
        } else if (value == 2) {
          Navigator.pushReplacementNamed(context, "/login");
        } else {
          return;
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
