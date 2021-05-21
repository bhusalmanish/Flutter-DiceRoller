import 'dart:math';

//import 'package:dicegame/diceroll.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RandomNum extends StatefulWidget {
  @override
  _RandomNumState createState() => _RandomNumState();
}

class _RandomNumState extends State<RandomNum> {
  var rnb = Random();
  int dicenumber = 1;

  randomnumber() {
    setState(() {
      dicenumber = rnb.nextInt(99) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Random Number game")),
      body: Container(
        child: Center(
          child: Column(
            children: [
              // Text(" Random Number data"),
              SizedBox(
                height: 10,
              ),

              Text(
                dicenumber.toString(),
                style: GoogleFonts.oswald(color: Colors.white, fontSize: 150),
              ),
              SizedBox(
                height: 10,
              ),

              //  Material Button  Not work  in this page ??

              // MaterialButton(
              //     height: 50,
              //     minWidth: 300,
              //     color: Colors.red,
              //     child: Text(
              //       'Roll',
              //       style: TextStyle(
              //         fontSize: 30,
              //       ),
              //     ),
              //     onPressed: randomnumber()),

              ElevatedButton(
                onPressed: () {
                  randomnumber();
                },
                child: Text("CLICK"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
