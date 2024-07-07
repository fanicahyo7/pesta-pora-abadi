import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DryNextPage extends StatefulWidget {
  const DryNextPage({super.key});

  @override
  State<DryNextPage> createState() => _DryNextPageState();
}

class _DryNextPageState extends State<DryNextPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Text(
                  "Gacoan Traceability System - DRY",
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
              const SizedBox(height: 20,),
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
                '- Pengujian di resto dapat dilaksanakan jika telah memiliki server, karena aplikasi tidak dapat diakses secara online karena belum meiliki server untuk hosting aplikasi dan penyimpanan databasenya',
                style: GoogleFonts.openSans(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 5),
              Text(
                '- Setelah server ada harus konfigurasi server dulu. (ini dilihat dulu siapa yg mengkonfigurasi)',
                style: GoogleFonts.openSans(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
                ],
              )
          ],
        ),
      ),
    ),);
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
          date: 'Mei 2024',
          status: TimelineStatus.completed,
          isFirst: true,
        ),
        TimelineTile(
          title: 'Desain Sistem',
          subtitle: 'Merancang struktur database dan desain UI/UX aplikasi.',
          date: 'Mei 2024',
          status: TimelineStatus.completed,
        ),
        TimelineTile(
          title: 'Pengembangan',
          subtitle: 'Mengimplementasikan desain sistem ke dalam kode aplikasi.',
          date: 'Mei - Juni 2024',
          status: TimelineStatus.completed,
        ),
        TimelineTile(
          title: 'Pengujian di Warehouse',
          subtitle:
              'Melakukan uji coba di Warehouse oleh pengguna dan perbaikan bug.',
          date: 'Juli 2024',
          status: TimelineStatus.inProgress,
        ),
        TimelineTile(
          title: 'Pengujian di beberapa Resto',
          subtitle:
              'Melakukan uji coba di Resto oleh pengguna dan perbaikan bug.',
          date: '? 2024',
          status: TimelineStatus.inProgress,
        ),
        TimelineTile(
          title: 'Peluncuran',
          subtitle:
              'Aplikasi siap digunakan oleh seluruh pengguna di Warehouse dan Resto.',
          date: '? 2024',
          status: TimelineStatus.inProgress,
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
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: GoogleFonts.openSans(fontSize: 16),
                ),
                const SizedBox(height: 5),
                Text(
                  date,
                  style: GoogleFonts.openSans(
                    fontSize: 14,
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