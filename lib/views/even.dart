import 'package:flutter/material.dart';

class Even extends StatefulWidget {
  @override
  _EvenState createState() => _EvenState();
}

class _EvenState extends State<Even> {
  String res = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(hintText: "Enter Number:"),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        if (value == "")
                          res = "";
                        else if (int.parse(value) % 2 == 0)
                          res = "Even";
                        else
                          res = "Odd";
                      });
                    },
                  ),
                  Text(
                    res,
                    style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
