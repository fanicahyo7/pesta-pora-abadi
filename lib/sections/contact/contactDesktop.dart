import 'package:flutter/material.dart';
import '../../animations/bottomAnimation.dart';
import '../../constants.dart';
import '../../widget/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
                  projectIcon: kContactIcons[0],
                  projectTitle: kContactTitles[0],
                  projectDescription: kContactDetails[0],
                  ontap: () {
                    
                  },
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              WidgetAnimator(
                child: ProjectCard(
                  cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
                  cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
                  projectIcon: kContactIcons[1],
                  projectTitle: kContactTitles[1],
                  projectDescription: kContactDetails[1],
                  ontap: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
