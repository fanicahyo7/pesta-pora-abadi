import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
Color kPrimaryColor = Color(0xffC0392B);

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/ios-filled/480/ffffff/mail.png",
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png"
];

const kSocialLinks = [
  "mailto:fanidc7@gmail.com",
  "https://www.instagram.com/fanicahyo7/",
  "https://twitter.com/FaniCahyo7",
  "https://www.linkedin.com/in/fani-dwi-cahyo-1a14671a7?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
  "https://github.com/FaniCahyo7",
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Community
// final kCommunityLogo = ['assets/srm.png', 'assets/mlsa.png', 'assets/dsc.png'];

// final kCommunityLinks = [
//   "https://www.srmist.edu.in/",
//   "https://studentambassadors.microsoft.com/",
//   "https://dscsrm.com/"
// ];

// Tools & Tech
// final kTools = ["JavaScript", "Golang", "VB.NET", "Laravel", "Flutter"];

// final kTools1 = ["SQL Server", "MySQL", "Dart", "Vue"];

// // services
// final kSkillsIcons = [
//   "assets/services/app.png",
//   "assets/services/ui.png",
//   "assets/services/rapid.png",
//   "assets/services/ml.jpg",
//   "assets/services/open.png",
// ];

// final kSkillsTitles = [
//   "Flutter App Development",
//   "MERN Development",
//   "Rapid Prototyping",
//   "Machine Learning",
//   "Open Source - GitHub",
// ];

// final kSkillsDescriptions = [
//   "I am experienced and skilled in app development using Flutter, also i am specially good at UI/UX designing part, and i am trying to improve my skills more and design Complete apps.",
//   "I have good working experience in MERN Stack and i have gained genuine skills and experience in web development through various projects and Internships.",
//   "Having a startup idea? Or maybe just want a prototype for your clients? With Flutter I can get you basic version of your app in no time and you are good to go for your project in future.",
//   "I love doing Deep Learning and Machine Learning, i am not too much skilled in this but i can definitely create some great work with the experience and knowledge i have gathered through numerous projects.",
//   "I love working for the community and give my contribution towards greater good, therefore i have been quite active in community and have made numerous contributions to many communities",
// ];

// final kSkillsLinks = [
//   "https://drive.google.com/file/d/19PZLP-2fCmwDy2Zi9Ieuh5RyykNhbAM5/view?usp=sharing",
//   "https://drive.google.com/file/d/1Bt2ZN18kwU9CKAOGXmrKruNSOhz-robB/view?usp=sharing",
//   "https://www.fiverr.com/share/qjERXd",
//   "https://drive.google.com/file/d/1rCEBf7TI34DotIIy5VLXMmRZRpdctW5e/view?usp=sharing",
//   "https://github.com/SatYu26"
// ];

// projects
final kProjectsBanner = [
  "assets/projects/sosialisasi.jpeg",
  "assets/projects/obs-laptop.png",
  "assets/projects/dry-hp.png",
];

final kProjectsIcons = [
  "assets/pesta-pora.png",
  "assets/pesta-pora.png",
  "assets/pesta-pora.png",
];

final kProjectsTitles = [
  "Sosialisasi Gacoan Treacability System - Frozen",
  "Optimum Buffer Stok Sparepart",
  "Gacoan Treacability System - DRY",
];

final kProjectsDescriptions = [
  "Mengenalkan dan memberi arahan dalam menggunakan aplikasi GTS Frozen di bagian Produksi, Warehouse dan Resto",
  "Membuat aplikasi untuk inventory sparepart dan mencari stok optimumnya secara realtime agar tidak kekurangan saat dibutuhkan",
  "Membuat aplikasi inventory untuk mengetahui stok barang pada warehouse dan resto secara real time",
];

// Contact
final kContactIcons = [
  "assets/pesta-pora.png",
  "assets/pesta-pora.png",
  "assets/pesta-pora.png",
];

final kContactTitles = [
  "Gacoan Treacability System - DRY",
  "Optimum Buffer Stok Sparepart",
  "List WO Project (Request Project ke DT)"
];

final kContactDetails = [
  "Warehouse - Resto",
  "ENG",
  "SCM"
];

// final kContactLinks = [
//   "https://goo.gl/maps/BDgab7yZwauzKihu5",
//   "tel:+917550264699",
// ];
