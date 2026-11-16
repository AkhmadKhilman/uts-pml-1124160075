import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_extension.dart';
import 'package:proyek_flutter_soal_2/models/auth.dart';
import 'package:proyek_flutter_soal_2/models/profile.dart';
import 'package:proyek_flutter_soal_2/widgets/app_bar.dart';
import 'package:proyek_flutter_soal_2/widgets/bottom_nav.dart';
import 'package:proyek_flutter_soal_2/widgets/profile_info.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(judul: "Profil"),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(Profile.dataProfile.pathFoto),
                    radius: 50,
                  ),

                  const SizedBox(height: 30),

                  Text(
                    Profile.dataProfile.nama,
                    style: context.themeText.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 3),

                  Text(
                    Profile.dataProfile.nim,
                    style: context.themeText.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  const SizedBox(height: 3),

                  Text(
                    Profile.dataProfile.prodi,
                    style: context.themeText.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  const SizedBox(height: 30),

                  Card(
                    color: context.themeColor.onSurface,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Biodata",
                            style: context.themeText.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: context.themeColor.surface,
                            ),
                            textAlign: TextAlign.center,
                          ),

                          const SizedBox(height: 10),

                          Text(
                            Profile.dataProfile.bio,
                            style: context.themeText.bodyLarge?.copyWith(
                              color: context.themeColor.surface,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  Card(
                    color: context.themeColor.onSurface,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Kontak",
                            style: context.themeText.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: context.themeColor.surface,
                            ),
                            textAlign: TextAlign.center,
                          ),

                          const SizedBox(height: 10),

                          ProfileInfo(
                            ikon: Icons.email,
                            judul: "Email",
                            isi: Auth.dataAuth.emailAuth,
                          ),
                          Divider(),
                          ProfileInfo(
                            ikon: Icons.phone,
                            judul: "No Telp",
                            isi: Profile.dataProfile.telp,
                          ),
                          Divider(),
                          ProfileInfo(
                            ikon: Icons.terminal,
                            judul: "Github",
                            isi: Profile.dataProfile.github,
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
      ),

      bottomNavigationBar: MyBotttomNav(halamanAktif: 0),
    );
  }
}
