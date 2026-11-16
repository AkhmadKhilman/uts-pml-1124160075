import 'package:flutter/material.dart';
import 'package:proyek_flutter_soal_2/helpers/theme_extension.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
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
      textColor: context.themeColor.surface,
      iconColor: context.themeColor.surface,
      leading: Icon(ikon),
      title: Text(judul, style: context.themeText.titleMedium),
      subtitle: Text(isi, style: context.themeText.bodyMedium),
    );
  }
}
