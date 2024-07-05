class Pendidikan {
  String? nama;
  String? jurusan;
  String? tahun;
  String? gambar;

  Pendidikan({this.nama, this.jurusan, this.tahun, this.gambar});
}

class Kerja {
  String? nama;
  String? posisi;
  String? tahun;
  String? gambar;

  Kerja({this.nama, this.posisi, this.tahun, this.gambar});
}

List<Pendidikan> listPendidikan = [
  Pendidikan(
      gambar: 'assets/smk.jpeg',
      jurusan: 'Rekayasa Perangkat Lunak',
      nama: 'SMK PGRI 3 MALANG',
      tahun: '2012 - 2015'),
  Pendidikan(
      gambar: 'assets/asia.png',
      jurusan: 'Informatika',
      nama: 'INSTITUT ASIA MALANG',
      tahun: '2015 - 2019'),
];

List<Kerja> listMagang = [
  Kerja(
      gambar: 'assets/afindo.jpeg',
      nama: 'CV. AFINDO INF JOMBANG',
      posisi: 'PROGRAMMER',
      tahun: 'Juli 2013 - Juni 2014'),
  Kerja(
      gambar: 'assets/astra.png',
      nama: 'ASTRA AUTO 2000 MALANG',
      posisi: 'IT SUPPORT',
      tahun: 'Feb 2018 - Mar 2018'),
  Kerja(
      gambar: 'assets/dhilan.png',
      nama: 'CV. DHILANMESINDO BATU',
      posisi: 'PROGRAMMER',
      tahun: 'Feb 2019 - Mar 2019'),
];

List<Kerja> listKerja = [
  Kerja(
      gambar: 'assets/asia.png',
      nama: 'INSTITUT ASIA MALANG',
      posisi: 'ASISTEN DOSEN',
      tahun: '2017 - 2018'),
  Kerja(
      gambar: 'assets/togamas.png',
      nama: 'TOGAMAS',
      posisi: 'IT PROGRAMMER',
      tahun: '2019 - 2024'),
];
