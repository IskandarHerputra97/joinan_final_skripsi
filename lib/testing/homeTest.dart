//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:joinan_final_skripsi/models/availableCourse.dart';
//import 'package:joinan_final_skripsi/testing/enrolled.dart';
//import 'package:joinan_final_skripsi/testing/notEnrolled.dart';
//import 'package:http/http.dart' as http;
//
//class HomeTest extends StatefulWidget {
//
//  @override
//  _HomeTestState createState() => _HomeTestState();
//}
//
//class _HomeTestState extends State<HomeTest> {
//  List<AvailableCourse> _availableCourses = List<AvailableCourse>();
//
//  Future<List<AvailableCourse>> fetchAvailableCourses() async {
//    //var url = 'https://api.myjson.com/bins/rd8y2';
//    var url = 'http://192.168.64.2/my_store/getAvailableCourses.php';
//    var response = await http.get(url);
//
//    var availableCourses = List<AvailableCourse>();
//
//    if (response.statusCode == 200) {
//      var availableCoursesJson = json.decode(response.body);
//      for (var availableCourseJson in availableCoursesJson) {
//        availableCourses.add(AvailableCourse.fromJson(availableCourseJson));
//      }
//    }
//    return availableCourses;
//  }
//
//  @override
//  void initState() {
//    fetchAvailableCourses().then((value) {
//      setState(() {
//        _availableCourses.addAll(value);
//      });
//    });
//    super.initState();
//  }
//
//  Future<List<dynamic>> _getData() async {
//    final response = await http.get("http://192.168.64.2/my_store/getAvailableCourses.php");
//    return json.decode(response.body);
//  }
//
//  //var availableCourses = List<AvailableCourse>();
//
//  //bool enrolled = false;
//
//  //AvailableCourse availableCourse;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Testing'),
//      ),
//      body: ListView.builder(
//          itemBuilder: (context, index) {
//            return Card(
//              child: Padding(
//                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
//                child: ListTile(
//                  leading: CircleAvatar(
//                    radius: 25.0,
//                    backgroundImage: NetworkImage(_availableCourses[index].courseImage),
//                  ),
//                  title: Text(_availableCourses[index].courseName),
//                  subtitle: Text(_availableCourses[index].lecturerName),
//                  onTap: () {
//                    if(_availableCourses[index].courseEnrolled == '1'){
//                      //print('sudah enrolled');
//                      Navigator.push(context, new MaterialPageRoute(builder: (context) => Enrolled()));
//                    }else if(_availableCourses[index].courseEnrolled == '0'){
//                      //print('not enrolled');
//                      Navigator.push(context, new MaterialPageRoute(builder: (context) => NotEnrolled()));
//                    }else{
//                      print('course lain');
//                    }
//                    //Navigator.push(context, new MaterialPageRoute(builder: (context) => AvailableCourseDetail(availableCourse: _availableCourses[index])));
//                  },
//                ),
//              ),
//            );
//          },
//          itemCount: _availableCourses.length,
//        )
//    );
//  }
//}
