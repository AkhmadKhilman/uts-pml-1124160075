import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_extension.dart';
import 'package:proyek_flutter_soal_2/screens/profile_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
    }

    await Future.delayed(Duration(seconds: 3));

    if (!mounted) return;

    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(builder: (context) => ProfilePage()),
    // );

    setState(() {
      _isLoading = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Login Berhasil"),
        backgroundColor: context.themeColor.error,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Form(
            key: _formKey,
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

                SizedBox(height: 20),

                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: "Password",
                    border: UnderlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password tidak boleh kosong";
                    }
                    return null;
                  },
                ),

                SizedBox(height: 40),

                ElevatedButton(
                  onPressed: _isLoading ? null : _login,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: context.themeColor.onPrimary,
                    foregroundColor: context.themeColor.primary,
                    textStyle: context.themeText.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: _isLoading
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
