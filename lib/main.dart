import 'dart:ui';

import 'package:flutter/material.dart';
import './constants.dart';
import './sections/mainSection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fani Dwi Cahyo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        fontFamily: "Montserrat",
        highlightColor: kPrimaryColor,
      ),
      home: MainPage(),
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch},
      ),
    );
  }
}
