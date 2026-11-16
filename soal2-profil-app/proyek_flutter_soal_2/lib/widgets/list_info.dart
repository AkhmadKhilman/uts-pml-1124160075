import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_extension.dart';

class ListInfo extends StatelessWidget {
  const ListInfo({
    super.key,
    required this.ikon,
    required this.judul,
    required this.isi,
  });

  final IconData ikon;
  final String judul, isi;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(ikon, color: context.themeColor.surface, size: 32),
      title: Text(
        judul,
        style: context.themeText.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
          color: context.themeColor.surface,
        ),
      ),
      subtitle: Text(
        isi,
        style: context.themeText.bodyMedium?.copyWith(
          fontWeight: FontWeight.w300,
          color: context.themeColor.surface,
        ),
      ),
    );
  }
}
