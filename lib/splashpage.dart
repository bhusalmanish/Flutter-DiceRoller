import 'package:dicegame/gamepage.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      title: Text(
        '   Dicegames ™  ',
        style: GoogleFonts.abrilFatface(color: Colors.lightBlue, fontSize: 40),
      ),
      seconds: 5,
      navigateAfterSeconds: GamePage(),
      image: Image.asset("img/puzzle.png"),
      photoSize: 60,
      backgroundColor: Colors.white,
      loaderColor: Colors.green,
      loadingText: Text(
        '  © Flutter Game 2.0  \n\n Adding Fun to your Life',
        style: GoogleFonts.lato(color: Colors.red, fontSize: 13),
      ),
      useLoader: true,
    );
  }
}
