import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoll extends StatefulWidget {
  @override
  _DiceRollState createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
//working Area
  var rng = new Random();
  int dicenumber = 3;

  changeDice() {
    setState(() {
      dicenumber = rng.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dice Roller")),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              Image.asset(
                "img/$dicenumber.png",
                height: 300,
                width: 300,
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  height: 50,
                  minWidth: 300,
                  color: Colors.red,
                  child: Text(
                    'Roll',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  onPressed: changeDice),
            ],
          ),
        ),
      ),
    );
  }
}
