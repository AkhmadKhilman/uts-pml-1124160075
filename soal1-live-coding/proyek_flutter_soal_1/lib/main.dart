import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile Akhmad Khilman Al Khafid",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        textTheme: TextTheme(
          headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
        useMaterial3: true,
      ),

      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.greenAccent,
          brightness: Brightness.dark,
        ),
        textTheme: TextTheme(
          headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
        useMaterial3: true,
      ),

      themeMode: ThemeMode.system,

      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      appBar: AppBar(
        title: Text("Profile Mahasiswa"),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Mohon Maaf Dashboard belum dibuat.")),
              );
            },
            icon: Icon(Icons.dashboard),
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person_2_outlined, size: 30),
                    radius: 30,
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Akhmad Khilman Al Khafid",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "1124160075",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Teknik Informatika",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  SizedBox(height: 25),

                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        spacing: 3,
                        children: [
                          Text(
                            "Kontak",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InfoTile(
                            icon: Icons.email,
                            label: "Email",
                            value: "khilman3570@gamil.com",
                          ),
                          InfoTile(
                            icon: Icons.phone_android_outlined,
                            label: "Nomor HP",
                            value: "081296200350",
                          ),
                          InfoTile(
                            icon: Icons.class_outlined,
                            label: "Kelas",
                            value: "TI 24 SE-1",
                          ),
                          InfoTile(
                            icon: Icons.work_history_outlined,
                            label: "Github",
                            value: "https://github.com/AkhmadKhilman",
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 25),

                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        spacing: 3,
                        children: [
                          Text(
                            "Keahlian dan Hobi",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InfoTile(
                            icon: Icons.code_outlined,
                            label: "Coding",
                            value: "PHP, Dart, Java",
                          ),
                          InfoTile(
                            icon: Icons.gamepad_outlined,
                            label: "Gaming",
                            value: "Playing console game and casual game",
                          ),
                          InfoTile(
                            icon: Icons.train_outlined,
                            label: "Travelling",
                            value: "Healing for resting",
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 25),

                  ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Terima kasih telah melihat profil saya",
                          ),
                        ),
                      );
                    },
                    label: Text("Terima Kasih"),
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

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label, value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
