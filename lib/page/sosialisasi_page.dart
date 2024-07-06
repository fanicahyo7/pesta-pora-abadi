import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SosialisasiPage extends StatelessWidget {
  const SosialisasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laporan Sosialisasi'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Laporan Sosialisasi Gacoan Treacability System - Frozen",
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
                'Tanggal: 1 Juni 2024',
                'Tempat: Resto Produksi',
                [
                  '1. Pengenalan Sistem dan Tujuan Sosialisasi',
                  '2. Demonstrasi Penggunaan Aplikasi',
                  '3. Sesi Tanya Jawab dan Diskusi',
                  '4. Penutup dan Informasi Kontak',
                ],
                [
                  'Tim Produksi: John Doe, Jane Smith',
                ],
                'Sosialisasi ini dilakukan untuk mengenalkan aplikasi kepada tim produksi. Kegiatan berjalan dengan lancar, diakhiri dengan sesi tanya jawab.',
                'assets/images/produksi.jpg'  // Path gambar
              ),
              const SizedBox(height: 20),
              _buildSession(
                'Sesi 2: Sosialisasi di Warehouse',
                'Tanggal: 5 Juni 2024',
                'Tempat: Resto Warehouse',
                [
                  '1. Pengenalan Sistem dan Tujuan Sosialisasi',
                  '2. Demonstrasi Penggunaan Aplikasi',
                  '3. Sesi Tanya Jawab dan Diskusi',
                  '4. Penutup dan Informasi Kontak',
                ],
                [
                  'Tim Warehouse: Alice Johnson, Bob Brown',
                ],
                'Sosialisasi ini dilakukan untuk mengenalkan aplikasi kepada tim warehouse. Kegiatan berjalan dengan lancar, dengan penekanan pada demonstrasi aplikasi.',
                'assets/images/warehouse.jpg'  // Path gambar
              ),
              const SizedBox(height: 20),
              _buildSession(
                'Sesi 3: Sosialisasi di Malang dan Batu',
                'Tanggal: 10 Juli 2024',
                'Tempat: Resto Malang dan Resto Batu',
                [
                  '1. Pengenalan Sistem dan Tujuan Sosialisasi',
                  '2. Demonstrasi Penggunaan Aplikasi',
                  '3. Sesi Tanya Jawab dan Diskusi',
                  '4. Penutup dan Informasi Kontak',
                ],
                [
                  'Tim Produksi: John Doe, Jane Smith',
                  'Tim Warehouse: Alice Johnson, Bob Brown',
                ],
                'Sosialisasi ini dilakukan untuk mengenalkan aplikasi kepada tim produksi dan warehouse di Resto Malang dan Batu. Kegiatan berjalan dengan lancar, diakhiri dengan sesi tanya jawab.',
                'assets/images/malang_batu.jpg'  // Path gambar
              ),
              const SizedBox(height: 20),
              _buildSession(
                'Sesi 4: Sosialisasi di Surabaya',
                'Tanggal: 25 Juli 2024',
                'Tempat: Resto Surabaya',
                [
                  '1. Pengenalan Sistem dan Tujuan Sosialisasi',
                  '2. Demonstrasi Penggunaan Aplikasi',
                  '3. Sesi Tanya Jawab dan Diskusi',
                  '4. Penutup dan Informasi Kontak',
                ],
                [
                  'Tim Produksi: Emily Davis, Michael Wilson',
                  'Tim Warehouse: Sarah Parker, David Brown',
                ],
                'Sosialisasi ini dilakukan untuk mengenalkan aplikasi kepada tim produksi dan warehouse di Resto Surabaya. Kegiatan berjalan dengan lancar, dengan penekanan pada demonstrasi aplikasi dan sesi tanya jawab.',
                'assets/images/surabaya.jpg'  // Path gambar
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSession(String title, String date, String location, List<String> agenda, List<String> participants, String summary, String imagePath) {
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
        ...participants.map((item) => Text(
          item,
          style: GoogleFonts.montserrat(fontSize: 16),
        )).toList(),
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
