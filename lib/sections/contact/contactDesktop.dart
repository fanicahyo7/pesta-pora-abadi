import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../animations/bottomAnimation.dart';
import '../../constants.dart';
import '../../page/dry_next_page.dart';
import '../../page/obs_next_page.dart';
import '../../widget/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class ContactDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
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
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetAnimator(
                child: ProjectCard(
                  cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
                  cardHeight: width < 1200 ? height * 0.28 : height * 0.3,
                  projectIcon: kContactIcons[0],
                  projectTitle: kContactTitles[0],
                  projectDescription: kContactDetails[0],
                  ontap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: DryNextPage()),
                    );
                  },
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              WidgetAnimator(
                child: ProjectCard(
                  cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
                  cardHeight: width < 1200 ? height * 0.28 : height * 0.3,
                  projectIcon: kContactIcons[1],
                  projectTitle: kContactTitles[1],
                  projectDescription: kContactDetails[1],
                  ontap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: ObsNextPage()),
                    );
                  },
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              WidgetAnimator(
                child: ProjectCard(
                  cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
                  cardHeight: width < 1200 ? height * 0.28 : height * 0.3,
                  projectIcon: kContactIcons[2],
                  projectTitle: kContactTitles[2],
                  projectDescription: kContactDetails[2],
                  ontap: () {
                    html.window.open('https://docs.google.com/spreadsheets/d/1OwIGyfQGdFTvZBZw5iep7KjRqYxuuQCZiwBCUkLeuR4/edit?gid=188107963#gid=188107963', '_blank');
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
