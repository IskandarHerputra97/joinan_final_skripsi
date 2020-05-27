import 'package:flutter/material.dart';
import 'package:joinan_final_skripsi/testing/enrolled.dart';

class NotEnrolled extends StatefulWidget {

  bool enrolled;
  NotEnrolled({this.enrolled});

  @override
  _NotEnrolledState createState() => _NotEnrolledState();
}

class _NotEnrolledState extends State<NotEnrolled> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belum enrolled'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              setState(() {
                widget.enrolled = true;
              });
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Enrolled()));
            },
            child: Text(
              'Ambil kelas',
            ),
          ),
        ],
      ),
    );
  }
}
