//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:joinan_final_skripsi/models/availableCourse.dart';
//import 'package:http/http.dart' as http;
//import 'package:joinan_final_skripsi/screens/pelajaran/availableCourseDetail.dart';
//
//class HomePelajaran extends StatefulWidget {
//
//  @override
//  _HomePelajaranState createState() => _HomePelajaranState();
//}
//
//class _HomePelajaranState extends State<HomePelajaran> {
//
//  List<AvailableCourse> _availableCourses = List<AvailableCourse>();
//
//  Future<List<AvailableCourse>> fetchAvailableCourses() async {
//    //var url = 'https://api.myjson.com/bins/rd8y2';
//    var url = 'https://api.myjson.com/bins/i4vqu';
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
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Joinan'),
//      ),
//        body: ListView.builder(
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
//                    Navigator.push(context, new MaterialPageRoute(builder: (context) => AvailableCourseDetail(availableCourse: _availableCourses[index])));
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


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:joinan_final_skripsi/main.dart';
import 'package:joinan_final_skripsi/models/availableCourse.dart';
import 'package:http/http.dart' as http;
import 'package:joinan_final_skripsi/models/kelasSaya.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/availableCourseDetail.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/availableCourseDetailEnrolled.dart';

class HomePelajaran extends StatefulWidget {

  HomePelajaran({this.username,this.userID});
  final String username;
  final String userID;
  //AvailableCourse availableCourse;


  @override
  _HomePelajaranState createState() => _HomePelajaranState();
}

class _HomePelajaranState extends State<HomePelajaran> {
  List<AvailableCourse> _availableCourses = List<AvailableCourse>();

  Future<List<AvailableCourse>> fetchAvailableCourses() async {
    var url = 'http://$myIP/joinan/getAvailableCourses.php';
    var response = await http.get(url);

    var availableCourses = List<AvailableCourse>();

    if (response.statusCode == 200) {
      var availableCoursesJson = json.decode(response.body);
      for (var availableCourseJson in availableCoursesJson) {
        availableCourses.add(AvailableCourse.fromJson(availableCourseJson));
      }
    }
    return availableCourses;
  }

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

//  Future<List<dynamic>> getData() async {
//    final response = await http.get("http://192.168.64.2/my_store/getAvailableCourses.php");
//    return json.decode(response.body);
//  }

  @override
  void initState() {
    fetchAvailableCourses().then((value) {
      setState(() {
        _availableCourses.addAll(value);
      });
    });

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
          title: Text('Halo, ${widget.username}'),
        ),
        body: ListView.builder(
          itemCount: _availableCourses.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage(
                        _availableCourses[index].courseImage),
                  ),
                  title: Text(_availableCourses[index].courseName),
                  subtitle: Text(_availableCourses[index].lecturerName),
                  onTap: () {
//                    if (_availableCourses[index].courseEnrolled == '1') {
//                      Navigator.push(context, new MaterialPageRoute(
//                          builder: (context) =>
//                              AvailableCourseDetailEnrolled(availableCourse: _availableCourses[index])));
//                    } else if (_availableCourses[index].courseEnrolled == '0') {
//                      Navigator.push(context, new MaterialPageRoute(
//                          builder: (context) => AvailableCourseDetail(availableCourse: _availableCourses[index],username: namaUser)));
//                    }
                    if(_kelasSaya.length < 1){
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => AvailableCourseDetail(availableCourse: _availableCourses[index],username: namaUser,userID: idUser)));
                    }else{
                      for(int i = 0; i < _kelasSaya.length; i++)
                      {
                        if(_kelasSaya[i].courseID == _availableCourses[index].courseID){
                          Navigator.push(context, new MaterialPageRoute(
                              builder: (context) =>
                                  AvailableCourseDetailEnrolled(availableCourse: _availableCourses[index])));
                          break;
                          //continue;
                        }else if(_kelasSaya[i].courseID != _availableCourses[index].courseID && i == _kelasSaya.length-1){
                          Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => AvailableCourseDetail(availableCourse: _availableCourses[index],username: namaUser, userID: idUser)));
                          //break;
                          //continue;
                        }
                      }
                    }
                  },
                ),
              ),
            );
          },
        )
    );
  }
}
//class AvailableCourseList extends StatelessWidget {
//
//  final List list;
//  AvailableCourseList({this.list});
//  //bool courseEnrolled = true;
//
//  @override
//  Widget build(BuildContext context) {
//    return ListView.builder(
//      itemCount: list==null ? 0 : list.length,
//      itemBuilder: (context, i) {
//        //return Text(list[i]['item_name']);
//        return Container(
//          padding: EdgeInsets.all(10.0),
//          child: GestureDetector(
//            onTap: ()=>Navigator.of(context).push(
//                MaterialPageRoute(
//                    builder: (BuildContext context)=> AvailableCourseDetail(list: list, index: i)
//                )
//            ),
//            child: Card(
//              child: ListTile(
//                title: Text(list[i]['courseName']),
//                //leading: Icon(Icons.widgets),
//                //leading: Image.network(list[i]['courseImage']),
//                leading: CircleAvatar(
//                  radius: 25.0,
//                  backgroundImage: NetworkImage(list[i]['courseImage']),
//                ),
//                subtitle: Text("Oleh ${list[i]['lecturerName']}"),
//              ),
//            ),
//          ),
//        );
//      },
//    );
//  }
//}

//class AvailableCourseList extends StatelessWidget {
//
//  final List list;
//  AvailableCourseList({this.list});
//  //bool courseEnrolled = true;
//
//  @override
//  Widget build(BuildContext context) {
//    return ListView.builder(
//      itemCount: list==null ? 0 : list.length,
//      itemBuilder: (context, i) {
//        //return Text(list[i]['item_name']);
//        return Container(
//          padding: EdgeInsets.all(10.0),
//          child: GestureDetector(
//            onTap: ()=>Navigator.of(context).push(
//                MaterialPageRoute(
//                    builder: (BuildContext context)=> AvailableCourseDetail(list: list, index: i)
//                )
//            ),
//            child: Card(
//              child: ListTile(
//                title: Text(list[i]['courseName']),
//                //leading: Icon(Icons.widgets),
//                //leading: Image.network(list[i]['courseImage']),
//                leading: CircleAvatar(
//                  radius: 25.0,
//                  backgroundImage: NetworkImage(list[i]['courseImage']),
//                ),
//                subtitle: Text("Oleh ${list[i]['lecturerName']}"),
//              ),
//            ),
//          ),
//        );
//      },
//    );
//  }
//}

//class AvailableCourseList extends StatelessWidget {
//
//  final List list;
//  AvailableCourse availableCourse;
//  AvailableCourseList({this.list,this.availableCourse});
//  //bool courseEnrolled = true;
//
//  @override
//  Widget build(BuildContext context) {
//    return ListView.builder(
//      //itemCount: list==null ? 0 : list.length,
//      //itemCount: ,
//      itemBuilder: (context, i) {
//        //return Text(list[i]['item_name']);
//        return Container(
//          padding: EdgeInsets.all(10.0),
//          child: GestureDetector(
//            onTap: ()=>Navigator.of(context).push(
//                MaterialPageRoute(
//                    //builder: (BuildContext context)=> AvailableCourseDetail(list: list, index: i)
//                )
//            ),
//            child: Card(
//              child: ListTile(
//                title: Text(list[i]['courseName']),
//                //leading: Icon(Icons.widgets),
//                //leading: Image.network(list[i]['courseImage']),
//                leading: CircleAvatar(
//                  radius: 25.0,
//                  backgroundImage: NetworkImage(list[i]['courseImage']),
//                ),
//                subtitle: Text("Oleh ${list[i]['lecturerName']}"),
//              ),
//            ),
//          ),
//        );
//      },
//    );
//  }
//}
