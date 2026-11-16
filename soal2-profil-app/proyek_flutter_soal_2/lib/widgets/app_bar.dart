import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_extension.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_manager.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({super.key, required this.judul});

  final String judul;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.themeColor.onPrimary,

      title: Text(
        judul,
        style: context.themeText.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,

      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: IconButton(
            onPressed: () {
              themeNotifier.value = themeNotifier.value == ThemeMode.light
                  ? ThemeMode.dark
                  : ThemeMode.light;
            },
            icon: Icon(
              themeNotifier.value == ThemeMode.dark
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
