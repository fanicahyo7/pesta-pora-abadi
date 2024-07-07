import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class DryPage extends StatefulWidget {
  const DryPage({super.key});

  @override
  State<DryPage> createState() => _DryPageState();
}

class _DryPageState extends State<DryPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Inisialisasi video player
    _controller = VideoPlayerController.asset('assets/projects/dry-video.mp4')
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 10),
              Text(
                'Membuat aplikasi inventory untuk mengetahui stok barang pada warehouse dan resto secara real-time.',
                style: GoogleFonts.openSans(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              Center(
                child: _controller.value.isInitialized
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        ),
                      )
                    : CircularProgressIndicator(),
              ),
              const SizedBox(height: 30),
              Text(
                'MASALAH',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '- Tidak dapat melihat stok secara real-time antara aplikasi dan fisik.',
                style: GoogleFonts.openSans(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 5),
              Text(
                '- Kesalahan dalam pencatatan stok.',
                style: GoogleFonts.openSans(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 5),
              Text(
                '- Sulit dalam mengelola dan memonitor stok barang di berbagai lokasi.',
                style: GoogleFonts.openSans(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 5),
              Text(
                '- Sulit memantau tanggal kedaluwarsa barang (Expired Date).',
                style: GoogleFonts.openSans(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 30),
              Text(
                'KETIKA MENGGUNAKAN APLIKASI INI',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '- Stok barang dapat dilihat secara real-time dan akurat.',
                style: GoogleFonts.openSans(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 5),
              Text(
                '- Mengurangi kesalahan pencatatan stok.',
                style: GoogleFonts.openSans(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 5),
              Text(
                '- Memudahkan pengelolaan dan monitoring stok barang di berbagai lokasi.',
                style: GoogleFonts.openSans(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 5),
              Text(
                '- Memudahkan pemantauan tanggal kedaluwarsa barang (Expired Date).',
                style: GoogleFonts.openSans(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 30),
              Text(
                'ALUR',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: ImageZoomWidget(imagePath: 'assets/projects/incoming.jpg'),
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

class ImageZoomWidget extends StatefulWidget {
  final String imagePath;

  const ImageZoomWidget({super.key, required this.imagePath});

  @override
  _ImageZoomWidgetState createState() => _ImageZoomWidgetState();
}

class _ImageZoomWidgetState extends State<ImageZoomWidget> {
  double _scale = 1.0;
  double _previousScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleStart: (ScaleStartDetails details) {
        _previousScale = _scale;
        setState(() {});
      },
      onScaleUpdate: (ScaleUpdateDetails details) {
        _scale = _previousScale * details.scale;
        setState(() {});
      },
      onScaleEnd: (ScaleEndDetails details) {
        _previousScale = 1.0;
      },
      child: Transform.scale(
        scale: _scale,
        child: Image.asset(widget.imagePath),
      ),
    );
  }
}