//import 'package:flutter/material.dart';
//
//class HomeKelasSaya extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Joinan'),
//      ),
//      body: Column(
//        children: <Widget>[
//          Text('Home Kelas Saya'),
//        ],
//      ),
//    );
//  }
//}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:joinan_final_skripsi/main.dart';
import 'package:joinan_final_skripsi/models/availableCourse.dart';
import 'package:http/http.dart' as http;
import 'package:joinan_final_skripsi/models/kelasSaya.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/availableCourseDetail.dart';

class HomeKelasSaya extends StatefulWidget {

  @override
  _HomeKelasSayaState createState() => _HomeKelasSayaState();
}

class _HomeKelasSayaState extends State<HomeKelasSaya> {

//  List<AvailableCourse> _availableCourses = List<AvailableCourse>();
//
//  Future<List<AvailableCourse>> fetchAvailableCourses() async {
//    //var url = 'https://api.myjson.com/bins/rd8y2';
//    //var url = 'https://api.myjson.com/bins/i4vqu';
//    var url = 'http://192.168.64.2/my_store/getKelasSaya.php';
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

  List<KelasSaya> _kelasSaya = List<KelasSaya>();

  Future<List<KelasSaya>> fetchKelasSaya() async {
    var url = 'http://$myIP/joinan/getKelasSaya.php';
    var response = await http.get(url);

    var kelasSayas = List<KelasSaya>();

    if (response.statusCode == 200) {
      var kelasSayasJson = json.decode(response.body);
      for (var kelasSayaJson in kelasSayasJson) {
        if(kelasSayaJson['userID'] == idUser) {
          kelasSayas.add(KelasSaya.fromJson(kelasSayaJson));
        }
      }
    }
    return kelasSayas;
  }

  @override
  void initState() {
    fetchKelasSaya().then((value) {
      setState(() {
        _kelasSaya.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Joinan'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            if(_kelasSaya[index].userID == idUser){
              return Card(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(_kelasSaya[index].courseImage),
                    ),
                    title: Text(_kelasSaya[index].courseName),
                    subtitle: Text(_kelasSaya[index].lecturerName),
                    onTap: () {
                      //Navigator.push(context, new MaterialPageRoute(builder: (context) => AvailableCourseDetail(availableCourse: _availableCourses[index])));
                    },
                  ),
                ),
              );
            }
            return Text('');
          },
          itemCount: _kelasSaya.length,
        )
    );
  }
}
