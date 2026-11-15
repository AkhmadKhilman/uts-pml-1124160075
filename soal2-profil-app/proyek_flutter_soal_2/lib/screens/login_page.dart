import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_extension.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Login",
                  style: context.themeText.headlineLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.themeColor.primary,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 30),

                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: "Email",
                    border: UnderlineInputBorder(),
                  ),
                ),

                SizedBox(height: 20),

                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: "Password",
                    border: UnderlineInputBorder(),
                  ),
                ),

                SizedBox(height: 40),

                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Memuat data login")),
                    );
                  },
                  icon: Icon(Icons.login),
                  label: Text("Login"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    backgroundColor: context.themeColor.onPrimary,
                    foregroundColor: context.themeColor.primary,
                    textStyle: context.themeText.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
