import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const new({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              child: Column(
                children: [
                  TextFormField(),
                  TextFormField(),
                  TextFormField(),
                  TextFormField(),
                  TextFormField(),
                  TextFormField(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
