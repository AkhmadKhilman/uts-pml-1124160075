import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_extension.dart';
import 'package:proyek_flutter_soal_2/models/auth.dart';
import 'package:proyek_flutter_soal_2/models/profile.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _prodiController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _telpController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _githubController = TextEditingController();

  @override
  void initState() {
    _namaController.text = Profile.dataProfile.nama;
    _prodiController.text = Profile.dataProfile.prodi;
    _bioController.text = Profile.dataProfile.bio;
    _telpController.text = Profile.dataProfile.telp;
    _emailController.text = Auth.dataAuth.emailAuth;
    _githubController.text = Profile.dataProfile.github;
    super.initState();
  }

  @override
  void dispose() {
    _namaController.dispose();
    _prodiController.dispose();
    _bioController.dispose();
    _telpController.dispose();
    _emailController.dispose();
    _githubController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/profile");
          },
          icon: Icon(Icons.close),
        ),
        title: Text(
          "Edit Profil",
          style: context.themeText.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.themeColor.primaryContainer,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _namaController,
                    decoration: const InputDecoration(
                      labelText: "Nama Lengkap",
                    ),
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    controller: _prodiController,
                    decoration: const InputDecoration(
                      labelText: "Program Studi",
                    ),
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    controller: _bioController,
                    decoration: const InputDecoration(labelText: "Biodata"),
                    maxLines: 3,
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    controller: _telpController,
                    decoration: const InputDecoration(labelText: "No Telp"),
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: "Email"),
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    controller: _githubController,
                    decoration: const InputDecoration(labelText: "Github"),
                  ),

                  const SizedBox(height: 30),

                  ElevatedButton(onPressed: () {}, child: const Text("Simpan")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
