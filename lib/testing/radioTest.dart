import 'package:flutter/material.dart';

class RadioTest extends StatefulWidget {
  @override
  _RadioTestState createState() => _RadioTestState();
}

class _RadioTestState extends State<RadioTest> {

  int radioA = 0;
  int kunci = 0;
  int correctScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Radio(
            value: 'a',
            groupValue: radioA,
            onChanged: (value) {
              setState(() {
                radioA = value;
                if(radioA == kunci){
                  correctScore++;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
