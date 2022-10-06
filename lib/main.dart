import 'package:flutter/material.dart';
import 'package:mqr/draft/Sign%20up.dart';
import 'package:mqr/view%20model/database/network/dio_helper.dart';
import 'package:mqr/view%20model/database/network/end_points.dart';
import 'package:mqr/view/pages/Events/Events.dart';
import 'package:mqr/view/pages/FAQ/FAQ.dart';
import 'package:mqr/view/pages/Finals/Finals.dart';
import 'package:mqr/view/pages/Lecture/Lectures.dart';
import 'package:mqr/view/pages/Midterms/Midterms.dart';
import 'package:mqr/view/pages/Sections/Sections.dart';
import 'package:mqr/view/pages/Terms_Condition.dart';
import 'package:mqr/view/pages/add_notes/add_note.dart';
import 'package:mqr/view/pages/home/Home_page.dart';
import 'package:mqr/view/pages/login/login2.dart';
import 'package:mqr/view/pages/news/News.dart';
import 'package:mqr/view/pages/settings/settings.dart';
import 'package:mqr/view/pages/sign%20up/sign%20up.dart';
import 'package:mqr/view/pages/start.dart';
import 'draft/no.dart';

void main() async {
  await DioHelper.init();

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Signup_page()),
    );
  }
}

//
