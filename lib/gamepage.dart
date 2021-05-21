import 'package:dicegame/diceroll.dart';
import 'package:dicegame/randomnum.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game"),
        actions: [
          IconButton(
            onPressed: () {
              Dilog();
            },
            hoverColor: Colors.yellowAccent[100],
            color: Colors.red,
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Container(
          child: Column(
        children: [
          SizedBox(height: 30),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 30),
              Image.asset(
                "img/dice.png",
                height: 100,
                width: 100,
              ),
              Image.asset(
                "img/cubes.png",
                height: 100,
                width: 100,
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //    Material Button  Not work  in this page ??

              // MaterialButton(
              //     height: 50,
              //     minWidth: 300,
              //     color: Colors.red,
              //     child: Text("Dice Roller"),
              //     onPressed: null),
              // SizedBox(height: 30),
              // MaterialButton(
              //     child: Text("Dice Roller"),
              //     shape: StadiumBorder(),
              //     onPressed: null),
              SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DiceRoll()),
                  );
                },
                child: Text("play"),
              ),

              SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RandomNum()),
                  );
                },
                child: Text("play"),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class Dilog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Alert Dialog"),
      content: Text("Dialog Content"),
    );
  }
}
