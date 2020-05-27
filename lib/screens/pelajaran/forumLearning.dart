//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:joinan_final_skripsi/models/availableCourse.dart';
//import 'package:http/http.dart' as http;
//import 'package:joinan_final_skripsi/models/forum.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/availableCourseDetail.dart';
//
//class ForumLearning extends StatefulWidget {
//
//  @override
//  _ForumLearningState createState() => _ForumLearningState();
//}
//
//class _ForumLearningState extends State<ForumLearning> {
//
//  List<Forum> _forums = List<Forum>();
//
//  Future<List<Forum>> fetchforums() async {
//    //var url = 'https://api.myjson.com/bins/rd8y2';
//    var url = 'https://api.myjson.com/bins/1afeeu';
//    var response = await http.get(url);
//
//    var forums = List<Forum>();
//
//    if (response.statusCode == 200) {
//      var forumsJson = json.decode(response.body);
//      for (var forumJson in forumsJson) {
//        forums.add(Forum.fromJson(forumJson));
//      }
//    }
//    return forums;
//  }
//
//  @override
//  void initState() {
//    fetchforums().then((value) {
//      setState(() {
//        _forums.addAll(value);
//      });
//    });
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          title: Text('Forum learning'),
//        ),
//        body: Column(
//          children: <Widget>[
//            Expanded(
//              child: ListView.builder(
//                itemBuilder: (context, index) {
//                  return Card(
//                    child: Padding(
//                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
//                      child: ListTile(
//                        title: Text(_forums[index].userEmail),
//                        subtitle: Text(_forums[index].postContent),
//                        onTap: () {
//                          //Navigator.push(context, new MaterialPageRoute(builder: (context) => AvailableCourseDetail(availableCourse: _availableCourses[index])));
//                        },
//                      ),
//                    ),
//                  );
//                },
//                itemCount: _forums.length,
//              ),
//            ),
//            TextField(
//              decoration: InputDecoration(
//              border: OutlineInputBorder(
//                borderSide: BorderSide(color: Colors.blue),
//              ),
//              hintText: 'Input post di sini'
//              ),
//            ),
//            RaisedButton(
//              onPressed: () {},
//              color: Colors.blue,
//              child: Text(
//                'Post',
//                style: TextStyle(
//                  color: Colors.white,
//                ),
//              ),
//            ),
//          ],
//        )
//    );
//  }
//}


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:joinan_final_skripsi/main.dart';
import 'package:joinan_final_skripsi/models/availableCourse.dart';
import 'package:http/http.dart' as http;
import 'package:joinan_final_skripsi/models/forum.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/availableCourseDetail.dart';
import 'package:intl/intl.dart';

class ForumLearning extends StatefulWidget {

  var now = new DateTime.now();
  var newTime = new DateFormat.yMMMMd().add_jm().format(DateTime.now());
  //static DateTime now = DateTime.now();
  //var newDate = DateFormat("dd-MM-yyyy hh:mm:ss").format(now);
  //String formattedDate = DateFormat('dd-MM-yyyy kk-mm').format(now);
  //List list;
  //int index;
  AvailableCourse availableCourse;
  ForumLearning({this.availableCourse});

  @override
  _ForumLearningState createState() => _ForumLearningState();
}

class _ForumLearningState extends State<ForumLearning> {
  //var now = new DateTime.now();

  TextEditingController postForum = TextEditingController();

//  Future<List<dynamic>> getForum() async {
//    //var url = 'https://api.myjson.com/bins/rd8y2';
//    //var url = 'https://api.myjson.com/bins/1afeeu';
//    //var url = 'http://192.168.64.2/my_store/getForum.php';
//    //var response = await http.get(url);
//    final response = await http.get('http://192.168.64.2/my_store/getForum.php');
//
//    return json.decode(response.body);
//  }

  Future<List> _postForum() async {
    var url = "http://$myIP/joinan/postForum.php";

    http.post(url, body: {
      "courseID": widget.availableCourse.courseID,
      "userEmail": emailUser,
      "postContent": postForum.text,
      "timePosted": widget.newTime
    });
    //setState(() {});
    Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => ForumLearning(availableCourse: widget.availableCourse,)));
  }

  List<Forum> _forum = List<Forum>();

  Future<List<Forum>> fetchForum() async {
    var url = 'http://$myIP/joinan/getForum.php';

    var response = await http.get(url);

    var forums = List<Forum>();

    if(response.statusCode == 200) {
      var forumsJson = json.decode(response.body);
      for(var forumJson in forumsJson) {
        if(forumJson['courseID'] == widget.availableCourse.courseID) {
          forums.add(Forum.fromJson(forumJson));
        }
      }
    }
    return forums;
  }

  Future<Forum> fetchSingleForum() async {
    var url = 'http://$myIP/joinan/getForum.php';

    var response = await http.get(url);

    if(response.statusCode == 200) {
      var singleForum = Forum.fromJson(json.decode(response.body));
      return singleForum;
    }
  }

  Future<Forum> _update() async {
    await fetchForum().then((value) {
      setState(() {
        _forum.addAll(value);
      });
    });
    print('new length : ${_forum.length}');

  }

  @override
  void initState() {
    fetchForum().then((value) {
      setState(() {
        _forum.addAll(value);
      });
    });
    super.initState();
    print('old length : ${_forum.length}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //title: Text('$username'),
          //title: Text('${widget.newTime}'),
          title: Text('Forum ${widget.availableCourse.courseName}'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: FutureBuilder<List>(
                future: fetchForum(),
                builder: (context, snapshot){
                  if(snapshot.hasError){
                    print(snapshot.error);
                  }else if(snapshot.hasData){
                    return ListView.builder(
                      itemCount: _forum==null ? 0 : _forum.length,
                      itemBuilder: (context, i) {
                        //return Text(list[i]['item_name']);
                        return Container(
                          padding: EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: ()=>Navigator.of(context).push(
                                MaterialPageRoute(
                                  //builder: (BuildContext context)=> Detail(list: list, index: i)
                                )
                            ),
                            child: Card(
                              child: ListTile(
                                //title: Text("${list[i]['userEmail']} - ${list[i]['timePosted']}"),
                                title: Text("${_forum[i].userEmail} - ${_forum[i].timePosted}"),
                                //title: Text('test'),
                                //title: Text("${list[i]['userEmail']} - ${formattedD}"),
                                subtitle: Text("${_forum[i].postContent}"),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                  return Text('loading');
                }
              ),
            ),
            TextField(
              controller: postForum,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: 'Input post di sini'
              ),
            ),
            RaisedButton(
              onPressed: () {
                _postForum();
                //setState(() {});
                //_update();
              },
              color: Colors.blue,
              child: Text(
                'Post',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            //Text('${widget.formattedDate}'),
          ],
        )
    );
  }
}

class ForumList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


//class ForumList extends StatelessWidget {
//
//  final List list;
//  ForumList({this.list});
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
//                    //builder: (BuildContext context)=> Detail(list: list, index: i)
//                )
//            ),
//            child: Card(
//              child: ListTile(
//                //title: Text("${list[i]['userEmail']} - ${list[i]['timePosted']}"),
//                title: Text("${list[i]['userEmail']} - ${list[i]['timePosted']}"),
//                //title: Text("${list[i]['userEmail']} - ${formattedD}"),
//                subtitle: Text("${list[i]['postContent']}"),
//              ),
//            ),
//          ),
//        );
//      },
//    );
//  }
//}