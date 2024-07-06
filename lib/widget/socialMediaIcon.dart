import 'package:flutter/material.dart';
import '../constants.dart';
import 'dart:html' as html;

class SocialMediaIconBtn extends StatelessWidget {
  final String icon;
  final String socialLink;
  final double height;
  final double horizontalPadding;

  SocialMediaIconBtn(
      {required this.icon,
      required this.socialLink,
      required this.height,
      required this.horizontalPadding});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: IconButton(
        icon: Image.network(
          icon,
          height: height,
        ),
        iconSize: height,
        onPressed: ()  {
          html.window.open(socialLink, '_blank');
        },
        hoverColor: kPrimaryColor,
      ),
    );
  }
}

void launchURL(String url) {
  html.window.open(url, '_blank');
}