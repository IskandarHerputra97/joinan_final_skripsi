import 'package:flutter/material.dart';
import 'package:joinan_final_skripsi/testing/homeTest.dart';

class Enrolled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sudah enrolled'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              //Navigator.push(context, new MaterialPageRoute(builder: (context) => HomeTest()));
            },
            child: Text(
              'Home'
            ),
          ),
        ],
      ),
    );
  }
}
