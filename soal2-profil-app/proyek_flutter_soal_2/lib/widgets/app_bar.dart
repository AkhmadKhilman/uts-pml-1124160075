import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_extension.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({super.key, required this.judul});

  final String judul;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text("Fitur ganti mode dalam pengerjaan"),
              backgroundColor: context.warningColor,
            ),
          );
        },
        icon: const Icon(Icons.nightlight),
      ),

      actions: [
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text("Fitur Logout dalam pengerjaan"),
                backgroundColor: context.warningColor,
              ),
            );
          },
          icon: Icon(Icons.logout, color: context.errorColor),
        ),
      ],
      title: Text(
        judul,
        style: context.themeText.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: context.themeColor.onPrimary,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
