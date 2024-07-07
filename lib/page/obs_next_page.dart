import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ObsNextPage extends StatefulWidget {
  const ObsNextPage({super.key});

  @override
  State<ObsNextPage> createState() => _ObsNextPageState();
}

class _ObsNextPageState extends State<ObsNextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              const SizedBox(height: 30),
              Text(
                'TIMELINE PROGRESS PEMBUATAN',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              TimelineProgress(),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CATATAN',
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '- Pembuatan akan dilanjutkan setelah DRY selesai.',
                    style: GoogleFonts.openSans(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ],
              )
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
          subtitle:
              'Mengumpulkan data sparepart dan menganalisis kebutuhan untuk sistem inventory.',
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
          subtitle:
              'Mengujicoba aplikasi, memperbaiki bug dan meluncurkannya ke pengguna akhir.',
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
