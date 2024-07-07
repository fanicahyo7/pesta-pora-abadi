import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class OBSPage extends StatefulWidget {
  const OBSPage({super.key});

  @override
  State<OBSPage> createState() => _OBSPageState();
}

class _OBSPageState extends State<OBSPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Inisialisasi video player
    _controller = VideoPlayerController.asset('assets/projects/obs-video.mp4')
      ..initialize().then((_) {
        // Set looping dan start video
        _controller.setLooping(true);
        _controller.play();
        _controller.setPlaybackSpeed(0.5);
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Center(
                child: Text(
                  "Optimum Buffer Stok Sparepart",
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Membuat aplikasi untuk inventory sparepart dan mencari stok optimumnya secara realtime agar tidak kekurangan saat dibutuhkan.',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              Center(
                child: _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : const CircularProgressIndicator(),
              ),
              const SizedBox(height: 20),
              Text(
                'MASALAH',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '1. Data sparepart tidak update dan tidak memiliki kode yang jelas sehingga sulit untuk dilacak.',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                '2. Stok sparepart sering kali tidak mencukupi saat dibutuhkan karena tidak ada sistem yang memastikan stok optimal.',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                '3. Tidak adanya monitoring yang efektif terhadap permintaan masuk dan keluar sparepart.',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              Text(
                'KETIKA MENGGUNAKAN APLIKASI INI',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '1. Aplikasi ini secara otomatis memperbarui data sparepart dan memberikan kode yang jelas untuk setiap item.',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                '2. Aplikasi ini memantau permintaan masuk dan keluar sparepart serta waktu kedatangan barang secara real-time untuk memastikan stok optimal.',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                '3. Dengan aplikasi ini, perusahaan dapat mengurangi risiko kekurangan stok dan memastikan ketersediaan sparepart saat dibutuhkan.',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              Text(
                'PROGRESS PEMBUATAN',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              TimelineProgress(),
            ],
          ),
        ),
      ),
    );
  }
}

class TimelineProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimelineTile(
          title: 'Analisis Kebutuhan',
          subtitle: 'Mengumpulkan data sparepart dan menganalisis kebutuhan untuk sistem inventory.',
          date: 'April 2024',
          status: TimelineStatus.completed,
          isFirst: true,
        ),
        TimelineTile(
          title: 'Desain Sistem',
          subtitle: 'Merancang struktur database dan alur kerja aplikasi.',
          date: 'April 2024',
          status: TimelineStatus.completed,
        ),
        TimelineTile(
          title: 'Pengembangan Aplikasi',
          subtitle: 'Mengimplementasikan desain sistem ke dalam kode aplikasi.',
          date: 'April - Mei 2024 (Lanjut Setelah DRY Selesai)',
          status: TimelineStatus.inProgress,
        ),
        TimelineTile(
          title: 'Pengujian dan Peluncuran',
          subtitle: 'Mengujicoba aplikasi, memperbaiki bug dan meluncurkannya ke pengguna akhir.',
          date: '? 2024',
          status: TimelineStatus.notStarted,
          isLast: true,
        ),
      ],
    );
  }
}

enum TimelineStatus { completed, inProgress, notStarted }

class TimelineTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final TimelineStatus status;
  final bool isFirst;
  final bool isLast;

  const TimelineTile({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.status,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    Icon icon;
    Color iconColor;
    if (status == TimelineStatus.completed) {
      icon = const Icon(Icons.check, color: Colors.white);
      iconColor = Colors.green;
    } else if (status == TimelineStatus.inProgress) {
      icon = const Icon(Icons.hourglass_empty, color: Colors.white);
      iconColor = Colors.orange;
    } else {
      icon = const Icon(Icons.radio_button_unchecked, color: Colors.white);
      iconColor = Colors.grey;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              if (!isFirst)
                Container(
                  height: 20,
                  width: 2,
                  color: Colors.grey,
                ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: iconColor,
                ),
                child: icon,
              ),
              if (!isLast)
                Container(
                  height: 20,
                  width: 2,
                  color: Colors.grey,
                ),
            ],
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: GoogleFonts.montserrat(fontSize: 14),
                ),
                const SizedBox(height: 5),
                Text(
                  date,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
