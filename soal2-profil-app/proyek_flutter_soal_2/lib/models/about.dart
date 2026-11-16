class KeahlianHobi {
  final String kategori;
  final String isi;

  const KeahlianHobi({required this.kategori, required this.isi});

  static const KeahlianHobi dataSatu = KeahlianHobi(
    kategori: "Programing Language",
    isi: "PHP, Java, Dart",
  );
  static const KeahlianHobi dataDua = KeahlianHobi(
    kategori: "Gaming",
    isi: "Console Game and Casual Game",
  );
  static const KeahlianHobi dataTiga = KeahlianHobi(
    kategori: "Travelinge",
    isi: "Healing for Brain Rest",
  );
}

class Pendidikan {
  final String instansi;
  final String tahun;

  const Pendidikan({required this.instansi, required this.tahun});

  static const Pendidikan dataSatu = Pendidikan(
    instansi: "Institute Teknologi dan Bisnis Bina Sarana Global",
    tahun: "2024 - Sekarang",
  );
  static const Pendidikan dataDua = Pendidikan(
    instansi: "MA Daarul Muttaqien",
    tahun: "2021 - 2024",
  );
  static const Pendidikan dataTiga = Pendidikan(
    instansi: "MTs Daarul Muttaqien",
    tahun: "2018 - 2021",
  );
}
