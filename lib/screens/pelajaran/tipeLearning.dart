//import 'package:flutter/material.dart';
//import 'package:joinan_final_skripsi/models/availableCourse.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/forumLearning.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/pdfLearning.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoLearning.dart';
//
//class TipeLearning extends StatelessWidget {
//
//  final AvailableCourse availableCourse;
//  TipeLearning({this.availableCourse});
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Tipe learning'),
//      ),
//      body: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.stretch,
//        children: <Widget>[
//          RaisedButton(
//            onPressed: () {
//              Navigator.push(context, new MaterialPageRoute(builder: (context) => VideoList(availableCourse: availableCourse)));
//            },
//            color: Colors.blue,
//            child: Text(
//              'Video learning',
//              style: TextStyle(
//                color: Colors.white,
//              ),
//            ),
//          ),
//          RaisedButton(
//            onPressed: () {
//              Navigator.push(context, new MaterialPageRoute(builder: (context) => ForumLearning()));
//            },
//            color: Colors.blue,
//            child: Text(
//              'Forum learning',
//              style: TextStyle(
//                color: Colors.white,
//              ),
//            ),
//          ),
//          RaisedButton(
//            onPressed: () {
//              Navigator.push(context, new MaterialPageRoute(builder: (context) => PDFLearning()));
//            },
//            color: Colors.blue,
//            child: Text(
//              'PDF learning',
//              style: TextStyle(
//                color: Colors.white,
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:joinan_final_skripsi/main.dart';
import 'package:joinan_final_skripsi/models/availableCourse.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/forumLearning.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/pdfLearning.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/videoLearning.dart';
import 'package:http/http.dart' as http;

class TipeLearning extends StatelessWidget {

  //List list;
  //int index;
  AvailableCourse availableCourse;
  TipeLearning({this.availableCourse});

  Future<List<dynamic>> getForum() async {
    final response = await http.get('http://$myIP/joinan/getForum.php');
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipe learning'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              //Navigator.push(context, new MaterialPageRoute(builder: (context) => VideoList(availableCourse: availableCourse)));
              Navigator.push(context, new MaterialPageRoute(builder: (context) => VideoList(availableCourse: availableCourse,)));
            },
            color: Colors.blue,
            child: Text(
              'Video learning',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              //getForum();
              Navigator.push(context, new MaterialPageRoute(builder: (context) => ForumLearning(availableCourse: availableCourse,)));
            },
            color: Colors.blue,
            child: Text(
              'Forum learning',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) => PDFLearning(availableCourse: availableCourse,)));
            },
            color: Colors.blue,
            child: Text(
              'PDF learning',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
