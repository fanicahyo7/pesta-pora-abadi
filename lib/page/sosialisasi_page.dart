import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SosialisasiPage extends StatelessWidget {
  const SosialisasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Sosialisasi Gacoan Treacability System - Frozen",
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              _buildSession(
                  'Sesi 1: Sosialisasi di Produksi',
                  'Tanggal: 15 Mei 2024',
                  'Tempat: Produksi',
                  [
                    '1. Pengenalan Sistem dan Tujuan Sosialisasi',
                    '2. Penginsatalan Device',
                    '3. Demonstrasi Penggunaan Aplikasi',
                  ],
                  [
                    'Peserta : PIC Produksi',
                  ],
                  'Sosialisasi ini dilakukan untuk mengenalkan aplikasi kepada tim produksi. Kegiatan berjalan dengan lancar.',
                  'assets/projects/prod.jpg'),
              const SizedBox(height: 20),
              _buildSession(
                  'Sesi 2: Sosialisasi di Warehouse',
                  'Tanggal: 15-16 Mei 2024',
                  'Tempat: Warehouse',
                  [
                    '1. Pengenalan Sistem dan Tujuan Sosialisasi',
                    '2. Penginsatalan Device',
                    '3. Demonstrasi Penggunaan Aplikasi',
                  ],
                  [
                    'Peserta : PIC INCOMING dan OUTGOING',
                  ],
                  'Sosialisasi ini dilakukan untuk mengenalkan aplikasi kepada tim warehouse. Kegiatan berjalan dengan lancar.',
                  'assets/projects/wh.jpg' // Path gambar
                  ),
              const SizedBox(height: 20),
              _buildSession(
                  'Sesi 3: Sosialisasi di RESTO JATIM 1',
                  'Tanggal: 17 Mei 2024',
                  'Tempat: Resto Gacoan Malang Sukun,Jakarta,Dinoyo,Batu',
                  [
                    '1. Pengenalan Sistem dan Tujuan Sosialisasi',
                    '2. Memastikan Device dapat menjalankan aplikasi',
                    '3. Demonstrasi Penggunaan Aplikasi',
                  ],
                  ['Peserta : SM,Stocker'],
                  'Sosialisasi ini dilakukan untuk mengenalkan aplikasi kepada tim Resto jatim 1 (malang). Kegiatan berjalan dengan lancar.',
                  'assets/projects/jtm1.jpg' // Path gambar
                  ),
              const SizedBox(height: 20),
              _buildSession(
                  'Sesi 4: Sosialisasi di JATIM 2',
                  'Tanggal: 14 Juni 2024',
                  'Tempat: Resto Gacoan Surabaya Kenjeran',
                  [
                    '1. Pengenalan Sistem dan Tujuan Sosialisasi',
                    '2. Memastikan Device dapat menjalankan aplikasi',
                    '3. Demonstrasi Penggunaan Aplikasi',
                  ],
                  ['Peserta : SM,Stocker'],
                  'Sosialisasi ini dilakukan untuk mengenalkan aplikasi kepada tim Resto jatim 2 (surabaya, sidoarjo, gresik, madura, mojokerto). Kegiatan berjalan dengan lancar.',
                  'assets/projects/sosialisasi.jpeg' // Path gambar
                  ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSession(
      String title,
      String date,
      String location,
      List<String> agenda,
      List<String> participants,
      String summary,
      String imagePath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Tanggal: $date',
          style: GoogleFonts.montserrat(fontSize: 16),
        ),
        Text(
          'Tempat: $location',
          style: GoogleFonts.montserrat(fontSize: 16),
        ),
        const SizedBox(height: 20),
        Image.asset(
          imagePath,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 20),
        Text(
          'Agenda:',
          style: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        ...agenda.map((item) => _buildAgendaItem(item)).toList(),
        const SizedBox(height: 20),
        Text(
          'Peserta:',
          style: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        ...participants
            .map((item) => Text(
                  item,
                  style: GoogleFonts.montserrat(fontSize: 16),
                ))
            .toList(),
        const SizedBox(height: 20),
        Text(
          'Ringkasan:',
          style: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          summary,
          style: GoogleFonts.montserrat(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 20),
        Divider(),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildAgendaItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.blueAccent, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.montserrat(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
