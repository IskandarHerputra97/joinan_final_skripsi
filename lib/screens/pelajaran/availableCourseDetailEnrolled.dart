//import 'package:flutter/material.dart';
//import 'package:joinan_final_skripsi/models/availableCourse.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/finalQuiz.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/latihan.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/requestPertemuan.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/tipeLearning.dart';
//
//class AvailableCourseDetailEnrolled extends StatefulWidget {
//
//  final AvailableCourse availableCourse;
//  AvailableCourseDetailEnrolled({Key key, @required this.availableCourse}) : super(key: key);
//
//
//
//  @override
//  _AvailableCourseDetailEnrolledState createState() => _AvailableCourseDetailEnrolledState();
//}
//
//class _AvailableCourseDetailEnrolledState extends State<AvailableCourseDetailEnrolled> {
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.availableCourse.courseName),
//      ),
//      body: Column(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: <Widget>[
//          Image.network(widget.availableCourse.courseImage),
//          Text(widget.availableCourse.courseDescription),
//          Text(widget.availableCourse.lecturerName),
//          Text(widget.availableCourse.lecturerDescription),
//          RaisedButton(
//            onPressed: () {
//              Navigator.push(context, new MaterialPageRoute(builder: (context) => RequestPertemuan()));
//            },
//            color: Colors.blue,
//            child: Text(
//              'Request pertemuan',
//              style: TextStyle(
//                color: Colors.white,
//              ),
//            ),
//          ),
//          Text(
//            'Anda sudah mengambil course ini',
//            style: TextStyle(
//              color: Colors.blue,
//              fontSize: 18.0,
//              fontWeight: FontWeight.bold,
//            ),
//          ),
//          RaisedButton(
//              onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => TipeLearning(availableCourse: widget.availableCourse)));
//              },
//              color: Colors.blue,
//              child: Text(
//                'Mulai belajar',
//                style: TextStyle(
//                  color: Colors.white,
//                ),
//              ),
//            ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: <Widget>[
//              RaisedButton(
//                  onPressed: () {
//                    Navigator.push(context, new MaterialPageRoute(builder: (context) => Latihan()));
//                  },
//                  color: Colors.blue,
//                  child: Text(
//                    'Latihan',
//                    style: TextStyle(
//                      color: Colors.white,
//                    ),
//                  ),
//                ),
//              RaisedButton(
//                  onPressed: () {
//                    Navigator.push(context, new MaterialPageRoute(builder: (context) => FinalQuiz()));
//                  },
//                  color: Colors.blue,
//                  child: Text(
//                    'Final quiz',
//                    style: TextStyle(
//                      color: Colors.white,
//                    ),
//                  ),
//                ),
//            ],
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
import 'package:joinan_final_skripsi/models/latihan.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/finalQuiz.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/latihan.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/requestPertemuan.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/tipeLearning.dart';
import 'package:http/http.dart' as http;

class AvailableCourseDetailEnrolled extends StatefulWidget {

  //Latihan latihan;
  AvailableCourse availableCourse;
  final String username;
  AvailableCourseDetailEnrolled({this.availableCourse,this.username});

  @override
  _AvailableCourseDetailEnrolledState createState() => _AvailableCourseDetailEnrolledState();
}

class _AvailableCourseDetailEnrolledState extends State<AvailableCourseDetailEnrolled> {

//  Future<List<Latihan>> getLatihan() async {
//    //var url = 'http://192.168.64.2/my_store/getAvailableCourses.php';
//    var url = 'http://$myIP/joinan/get_latihan.php';
//    var response = await http.get(url);
//
//    var latihans = List<Latihan>();
//
//    if(response.statusCode == 200) {
//      var latihansJson = json.decode(response.body);
//      for(var latihanJson in latihansJson) {
//        latihans.add(Latihan.fromJson(latihanJson));
//      }
//    }
//    return latihans;
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.availableCourse.courseName),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //Image.network(widget.list[widget.index]['courseImage']),
            Center(
              child: Container(
                width: 200,
                height: 300,
                child: Image.network(
                    widget.availableCourse.courseImage
                ),
              ),
            ),
            //Text(widget.list[widget.index]['courseDescription']),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.availableCourse.courseDescription),
            ),
            //Text(widget.list[widget.index]['lecturerName']),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.availableCourse.lecturerName),
            ),
            //Text(widget.list[widget.index]['lecturerDescription']),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.availableCourse.lecturerDescription),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => RequestPertemuan(availableCourse: widget.availableCourse, username: namaUser,)));
                },
                color: Colors.blue,
                child: Text(
                  'Request pertemuan',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Text(
              'Anda sudah mengambil course ini',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => TipeLearning(availableCourse: widget.availableCourse,)));
                },
                color: Colors.blue,
                child: Text(
                  'Mulai belajar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(builder: (context) => LatihanPage(availableCourse: widget.availableCourse,username: widget.username)));
                    },
                    color: Colors.blue,
                    child: Text(
                      'Latihan',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(builder: (context) => FinalQuiz(availableCourse: widget.availableCourse,username: namaUser,)));
                    },
                    color: Colors.blue,
                    child: Text(
                      'Final quiz',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
