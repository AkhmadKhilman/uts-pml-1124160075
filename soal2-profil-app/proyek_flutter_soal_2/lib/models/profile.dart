class Profile {
  final String nama;
  final String nim;
  final String prodi;
  final String kelas;
  final String bio;
  final String telp;
  final String github;

  const Profile({
    required this.nama,
    required this.nim,
    required this.prodi,
    required this.kelas,
    required this.bio,
    required this.telp,
    required this.github,
  });

  static const Profile dataProfile = Profile(
    nama: "Akhmad Khilman Al Khafid",
    nim: "1124160075",
    prodi: "Teknik Informatika",
    kelas: "TI 24 SE-1",
    bio: "slow living",
    telp: "081296200350",
    github: "https://github.com/AkhmadKhilman",
  );
}
