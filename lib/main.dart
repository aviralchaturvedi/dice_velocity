import 'package:flutter/material.dart';
import 'dart:math';
import "package:velocity_x/velocity_x.dart";

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftBNum = 1;
  var rightBNum = 1;
  @override
  Widget build(BuildContext context) {
    chnagediceface() {
      leftBNum = Random().nextInt(6) + 1;
      rightBNum = Random().nextInt(6) + 1;
    }

    return HStack([
      Image(image: AssetImage("images/dice$leftBNum.png"))
          .p8()
          .wh48(context)
          .onTap(() {
        setState(() {
          chnagediceface();
        });
      }),
      Image(image: AssetImage("images/dice$rightBNum.png"))
          .p8()
          .wh48(context)
          .animatedBox
          .child
          .onTap(() {
        setState(() {
          chnagediceface();
        });
      })
    ]).centered();
  }
}
