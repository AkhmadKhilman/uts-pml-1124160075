import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_extension.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
                    decoration: const InputDecoration(
                      labelText: "Nama Lengkap",
                    ),
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Program Studi",
                    ),
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    decoration: const InputDecoration(labelText: "Biodata"),
                    maxLines: 3,
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    decoration: const InputDecoration(labelText: "No Telp"),
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    decoration: const InputDecoration(labelText: "Email"),
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    decoration: const InputDecoration(labelText: "Github"),
                  ),

                  const SizedBox(height: 15),

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
