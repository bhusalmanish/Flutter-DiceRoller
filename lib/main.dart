import 'package:flutter/material.dart';
import 'splashpage.dart';
import 'gamepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: "game App",
      initialRoute: '/',
      routes: {
        '/': (contexrt) => SplashPage(),
        '/dice': (context) => GamePage(),
      },
    );
  }
}
