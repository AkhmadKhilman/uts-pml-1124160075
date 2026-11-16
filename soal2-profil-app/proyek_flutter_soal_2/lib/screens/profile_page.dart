import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_extension.dart';
import 'package:proyek_flutter_soal_2/models/profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: context.themeColor.onSecondary,
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
                    style: context.themeText.titleMedium?.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  const SizedBox(height: 3),

                  Text(
                    Profile.dataProfile.prodi,
                    style: context.themeText.titleMedium?.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
