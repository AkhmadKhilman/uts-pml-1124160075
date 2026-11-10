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
      appBar: AppBar(
        title: Text("Profile Mahasiswa"),
        actions: [
          IconButton(
            onPressed: () {
              print("object");
            },
            icon: Icon(Icons.dashboard),
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(child: Icon(Icons.person_2_outlined)),
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
                  Text("Teknik Informatika."),
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
