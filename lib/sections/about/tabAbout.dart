import 'package:flutter/material.dart';
import '../../model/model.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      height: height*1.4,
      color: Colors.grey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "\nAbout Me",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pendidikan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: listPendidikan
                            .map(
                              (e) => Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    e.gambar.toString()))),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              e.nama.toString(),
                                              style: GoogleFonts.montserrat(
                                                letterSpacing: 2.0,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(e.jurusan.toString()),
                                            Text(e.tahun.toString())
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pengalaman Magang',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: listMagang
                            .map(
                              (e) => Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    e.gambar.toString()))),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              e.nama.toString(),
                                              style: GoogleFonts.montserrat(
                                                letterSpacing: 2.0,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(e.posisi.toString()),
                                            Text(e.tahun.toString())
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pengalaman Kerja',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: listKerja
                            .map(
                              (e) => Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    e.gambar.toString()))),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              e.nama.toString(),
                                              style: GoogleFonts.montserrat(
                                                letterSpacing: 2.0,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(e.posisi.toString()),
                                            Text(e.tahun.toString())
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  )),
              // Expanded(flex: 1, child: Text('wkwkwkwkw'))
              // Expanded(
              //   // flex: 3,
              //   child: AboutMeText(
              //     fontSize: width <= 1100 ? 14 : 16,
              //   ),
              // ),
              // (width <= 950 && width >= 1185)
              //     ? Container()
              //     : Expanded(child: Container()),
              // width >= 1185 ? Expanded(child: ToolsTech()) : ToolsTech()
            ],
          ),
          SizedBox(
            height: height * 0.04,
          ),
          
        ],
      ),
    );
  }
}
