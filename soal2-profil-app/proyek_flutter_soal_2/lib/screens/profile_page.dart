import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_extension.dart';
import 'package:proyek_flutter_soal_2/models/profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profil",
          style: context.themeText.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: context.themeColor.onPrimary,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(child: Icon(Icons.person_2)),

                  SizedBox(height: 30),

                  Text(Profile.dataProfile.nama),

                  SizedBox(height: 5),

                  Text(Profile.dataProfile.nim),

                  SizedBox(height: 5),

                  Text(Profile.dataProfile.bio),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
