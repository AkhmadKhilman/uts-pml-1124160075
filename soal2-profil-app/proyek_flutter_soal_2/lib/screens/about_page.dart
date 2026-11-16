import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_extension.dart';
import 'package:proyek_flutter_soal_2/models/about.dart';
import 'package:proyek_flutter_soal_2/widgets/app_bar.dart';
import 'package:proyek_flutter_soal_2/widgets/bottom_nav.dart';
import 'package:proyek_flutter_soal_2/widgets/list_info.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(judul: "Tentang Saya"),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Keahlian/Hobi",
                  style: context.themeText.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Card(
                  color: context.themeColor.onSurface,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ListInfo(
                          ikon: Icons.code,
                          judul: KeahlianHobi.dataSatu.kategori,
                          isi: KeahlianHobi.dataSatu.isi,
                        ),
                        Divider(),
                        ListInfo(
                          ikon: Icons.gamepad,
                          judul: KeahlianHobi.dataDua.kategori,
                          isi: KeahlianHobi.dataDua.isi,
                        ),
                        Divider(),
                        ListInfo(
                          ikon: Icons.train,
                          judul: KeahlianHobi.dataTiga.kategori,
                          isi: KeahlianHobi.dataTiga.isi,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Text(
                  "Riwayat Pendidikan",
                  style: context.themeText.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Card(
                  color: context.themeColor.onSurface,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ListInfo(
                          ikon: Icons.school,
                          judul: Pendidikan.dataSatu.instansi,
                          isi: Pendidikan.dataSatu.tahun,
                        ),
                        Divider(),
                        ListInfo(
                          ikon: Icons.local_library,
                          judul: Pendidikan.dataDua.instansi,
                          isi: Pendidikan.dataDua.tahun,
                        ),
                        Divider(),
                        ListInfo(
                          ikon: Icons.auto_stories,
                          judul: Pendidikan.dataTiga.instansi,
                          isi: Pendidikan.dataTiga.tahun,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: MyBotttomNav(halamanAktif: 1),
    );
  }
}
