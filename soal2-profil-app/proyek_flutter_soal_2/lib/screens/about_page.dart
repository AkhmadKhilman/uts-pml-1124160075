import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/widgets/app_bar.dart';
import 'package:proyek_flutter_soal_2/widgets/bottom_nav.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(judul: "Tentang Saya"),
      bottomNavigationBar: MyBotttomNav(halamanAktif: 1),
    );
  }
}
