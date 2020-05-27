//import 'package:flutter/material.dart';
//import 'package:joinan_final_skripsi/models/availableCourse.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/availableCourseDetailEnrolled.dart';
//
//class AvailableCourseDetail extends StatefulWidget {
//
//  final AvailableCourse availableCourse;
//  AvailableCourseDetail({Key key, @required this.availableCourse}) : super(key: key);
//
//
//
//  @override
//  _AvailableCourseDetailState createState() => _AvailableCourseDetailState();
//}
//
//class _AvailableCourseDetailState extends State<AvailableCourseDetail> {
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
//              Navigator.push(context, new MaterialPageRoute(builder: (context) => AvailableCourseDetailEnrolled(availableCourse: widget.availableCourse)));
//            },
//            color: Colors.blue,
//            child: Text(
//              'Ambil Kelas',
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

import 'package:flutter/material.dart';
import 'package:joinan_final_skripsi/main.dart';
import 'package:joinan_final_skripsi/models/availableCourse.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/availableCourseDetailEnrolled.dart';
import 'package:http/http.dart' as http;

class AvailableCourseDetail extends StatefulWidget {

  AvailableCourse availableCourse;
  final String username;
  final String userID;
  AvailableCourseDetail({this.availableCourse,this.username,this.userID});

  @override
  _AvailableCourseDetailState createState() => _AvailableCourseDetailState();
}

class _AvailableCourseDetailState extends State<AvailableCourseDetail> {

  void enrollCourse() {
    var url = 'http://$myIP/joinan/enrollCourse.php';
    http.post(url,body: {
      "courseID": widget.availableCourse.courseID.toString(),
      "statusCourse": '1'
    });
  }

  void addKelasSaya() {
    var url = 'http://$myIP/joinan/addKelasSaya.php';
    http.post(url,body: {
      "courseID": widget.availableCourse.courseID.toString(),
      "userID": widget.userID.toString(),
      "courseName": widget.availableCourse.courseName.toString(),
      "courseDescription": widget.availableCourse.courseDescription.toString(),
      "courseImage": widget.availableCourse.courseImage.toString(),
      //"courseEnrolled": widget.availableCourse.courseEnrolled.toString(),
      //"courseEnrolled": '1',
      "lecturerName": widget.availableCourse.lecturerName.toString(),
      "lecturerDescription": widget.availableCourse.lecturerDescription.toString()
    });
    print(widget.userID);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.availableCourse.courseName}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //Image.network(widget.list[widget.index]['courseImage']),
            Center(
              child: Container(
                width: 300,
                height: 400,
                child: Image.network(
                    widget.availableCourse.courseImage,
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
                  //enrollCourse();
                  addKelasSaya();
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> AvailableCourseDetailEnrolled(availableCourse: widget.availableCourse,username: namaUser,)));
                },
                color: Colors.blue,
                child: Text(
                  'Ambil kelas',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

