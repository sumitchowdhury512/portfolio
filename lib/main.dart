import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/contraints.dart';
import 'package:portfolio/projectpage.dart';
import 'package:url_strategy/url_strategy.dart';
import 'home_screen.dart';

void main() {
  setPathUrlStrategy();
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter portfolio',
      theme: ThemeData.dark().copyWith(
        primaryColor: primarycolor,
        scaffoldBackgroundColor: bgcolor,
        canvasColor: bgcolor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.white)
          .copyWith(
          bodyText1: TextStyle(color: bodytextcolor),
          bodyText2: TextStyle(color: bodytextcolor)
        ),
      ),
      initialRoute: 'Home',
      routes: {
        '/projects': (context) => projectpage(),
        // '/second': (context) => Aboutmain(),
      },
      home: Homescreen()
    );
  }
}
