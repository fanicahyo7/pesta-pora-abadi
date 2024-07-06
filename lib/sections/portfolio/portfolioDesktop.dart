import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:satyam_website/page/dry_page.dart';
import 'package:satyam_website/page/obs_page.dart';
import 'package:satyam_website/page/sosialisasi_page.dart';
import '../../animations/bottomAnimation.dart';
import '../../widget/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';

class PortfolioDesktop extends StatelessWidget {
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
            "\nProjects",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "Project saya di PT. Pesta Pora Abadi\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.2,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                  width: width * 0.015,
                );
              },
              itemBuilder: (context, index) {
                return WidgetAnimator(
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.25 : width * 0.35,
                    cardHeight: width < 1200 ? height * 0.28 : height * 0.1,
                    backImage: kProjectsBanner[index],
                    projectIcon: kProjectsIcons[index],
                    projectTitle: kProjectsTitles[index],
                    projectDescription: kProjectsDescriptions[index],
                    bottomWidget: Container(),
                    ontap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: (index == 0)
                                ? SosialisasiPage()
                                : (index == 1) ? OBSPage() : DryPage()),
                      );
                    },
                  ),
                );
              },
              itemCount: 3,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
        ],
      ),
    );
  }
}
