import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../constants.dart';
import '../../page/dry_next_page.dart';
import '../../page/obs_next_page.dart';
import '../../widget/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class ContactMobileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Text(
            "\nWhat's Next?",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "Yang saya kerjakan selanjutnya\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
            textAlign: TextAlign.center,
          ),
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ProjectCard(
                cardHeight: 300,
                cardWidth: width > 480 ? width * 0.5 : width * 0.8,
                projectIcon: kContactIcons[i],
                projectTitle: kContactTitles[i],
                projectDescription: kContactDetails[i],
                ontap: () {
                  if (i == 0) {
                    Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: DryNextPage()),
                    );
                  } else if (i == 1) {
                    Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: ObsNextPage()),
                    );
                  } else {
                    html.window.open('https://docs.google.com/spreadsheets/d/1OwIGyfQGdFTvZBZw5iep7KjRqYxuuQCZiwBCUkLeuR4/edit?gid=188107963#gid=188107963', '_blank');
                  }
                },
              ),
            ),
            options: CarouselOptions(
                height: height * 0.3,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          )
        ],
      ),
    );
  }
}
