import 'package:flutter/material.dart';
import 'package:homework/views/calc.dart';
import 'package:homework/views/even.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 200,horizontal:80),
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      children: <Widget>[
          Expanded(
            child: MakeTile(
              colour: Color(0xFF1D1E33),
              onPress: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Calc()));
              },
              cardChild: Center(child: Text("Calculator")),
            ),
          ),
          Expanded(
            child: MakeTile(
              colour: Color(0xFF1D1E33),
              onPress: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Even()));
              },
              cardChild: Center(child: Text("Even")),
            ),
          ),
      ],
    ),
        ));
  }
}

class MakeTile extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  MakeTile({@required this.colour, this.cardChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
