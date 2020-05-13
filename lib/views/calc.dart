import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  int _a,_b,_res = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(height: 500,width: 500,decoration: BoxDecoration(color: Colors.redAccent,borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextField(decoration: InputDecoration(hintText: "Enter Number:"),textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        if(value=="")
                          _a=0;
                        else
                          _a=int.parse(value);
                        if(_a!=null && _b!=null)
                        _res=_a+_b;
                        print(_a);
                      });
                    },
                  ),
                  TextField(decoration: InputDecoration(hintText: "Enter Number:",),textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        if(value=="")
                          _b=0;
                        else
                          _b=int.parse(value);
                        if(_a!=null && _b!=null)
                          _res=_a+_b;
                      });
                    },
                  ),
                  Text(
                      (_a!=null && _b!=null)?_res.toString():"0",
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
