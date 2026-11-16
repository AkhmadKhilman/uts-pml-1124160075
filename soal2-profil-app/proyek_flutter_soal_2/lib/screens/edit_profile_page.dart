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
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _kelasController = TextEditingController();
  final TextEditingController _prodiController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _telpController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _githubController = TextEditingController();

  @override
  void initState() {
    _namaController.text = Profile.dataProfile.nama;
    _nimController.text = Profile.dataProfile.nim;
    _kelasController.text = Profile.dataProfile.kelas;
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
    _nimController.dispose();
    _kelasController.dispose();
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
        backgroundColor: context.themeColor.onPrimaryContainer,

        leading: IconButton(
          color: context.themeColor.primaryContainer,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
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
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _namaController,
                    decoration: const InputDecoration(
                      labelText: "Nama Lengkap",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nama tidak boleh kosong";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    controller: _nimController,
                    enabled: false,
                    decoration: const InputDecoration(labelText: "NIM"),
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    controller: _kelasController,
                    decoration: const InputDecoration(labelText: "Kelas"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Kelas tidak boleh kosong";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    controller: _prodiController,
                    decoration: const InputDecoration(
                      labelText: "Program Studi",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Program Studi tidak boleh kosong";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    controller: _bioController,
                    decoration: const InputDecoration(labelText: "Biodata"),
                    maxLines: 3,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Biodata tidak boleh kosong";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    controller: _telpController,
                    decoration: const InputDecoration(labelText: "No Telp"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nomor Telephone tidak boleh kosong";
                      }

                      if (value.length > 10 || value.length > 13) {
                        return "Nomor Telephone kurang tepat";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: "Email"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email tidak boleh kosong";
                      }
                      if (!value.contains("@")) {
                        return "Format Email salah";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    controller: _githubController,
                    decoration: const InputDecoration(labelText: "Github"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Akun Github tidak boleh kosong";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 30),

                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Profile.dataProfile = Profile(
                          nama: _namaController.text,
                          kelas: _kelasController.text,
                          prodi: _prodiController.text,
                          bio: _bioController.text,
                          telp: _telpController.text,
                          github: _githubController.text,

                          nim: _nimController.text,
                          pathFoto: Profile.dataProfile.pathFoto,
                        );

                        Auth.dataAuth = Auth(
                          emailAuth: _emailController.text,

                          passwordAuth: Auth.dataAuth.passwordAuth,
                        );

                        Navigator.pop(context);
                      }
                    },

                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      backgroundColor: context.themeColor.onPrimary,
                      foregroundColor: context.themeColor.primary,
                      textStyle: context.themeText.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    child: const Text("Simpan"),
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
