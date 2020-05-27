import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:joinan_final_skripsi/main.dart';

class PostCertificate extends StatelessWidget {


  void _postForum() {
    var url = "http://$myIP/my_store/postForum.php";

    http.post(url, body: {
      //"courseID": widget.availableCourse.courseID,
      //"courseID": 99.toString(),
      "courseID":'98',
      //"courseID": 'test courseID',
      "userEmail": 'test emailUser',
      "postContent": 'test content',
      "timePosted": 'test time'
    });
    print('post forum jalan');
  }

  void _addKelasSaya() {
    var url = 'http://$myIP/my_store/addKelasSaya.php';
    http.post(url,body: {
      //"courseID": widget.availableCourse.courseID,
      "courseID": "99",
      "userID": "98",
      //"courseName": widget.availableCourse.courseName,
      "courseName": "test course name",
      //"courseDescription": widget.availableCourse.courseDescription,
      "courseDescription": "test course description",
      //"courseImage": widget.availableCourse.courseImage,
      "courseImage": "test course image",
      //"courseEnrolled": widget.availableCourse.courseEnrolled.toString(),
      //"courseEnrolled": '1',
      //"lecturerName": widget.availableCourse.lecturerName,
      "lecturerName": "test lecturer name",
      //"lecturerDescription": widget.availableCourse.lecturerDescription
      "lecturerDescription": "test lecturer description"
    });
    //print(widget.availableCourse.courseID);
    //print(widget.availableCourse.courseName);
    //print(widget.availableCourse.courseDescription);
    //print(widget.availableCourse.courseImage);
    //print(widget.availableCourse.lecturerName);
    //print(widget.availableCourse.lecturerDescription);
    print('add kelas saya jalan');
  }

  void _postCertificate() {
    var url = "http://192.168.64.2/my_store/post_certificate.php";

    http.post(url, body: {
      "courseID":'98',
      //"courseID": 'test courseID',
      "courseName": 'test course name',
      "userEmail": 'test email',
      "certificateContent": 'test content'
    });
    print('post certificate jalan');
  }

  void _addCertificate() {
    var url = "http://192.168.64.2/my_store/add_certificate.php";
    http.post(url,body: {
      "courseID": 98.toString(),
      "courseName": 'test course name',
      "userEmail": 'test user email',
      "certificateContent": 'Certificate untuk course abc'
    });
    print('method _addCertificate jalan');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing Post Certificate'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              _postForum();
            },
            child: Text(
              'Post Forum',
            ),
          ),
          RaisedButton(
            onPressed: () {
              _addKelasSaya();
            },
            child: Text(
              'Post Kelas saya',
            ),
          ),
          RaisedButton(
            onPressed: () {
              _addCertificate();
              //_postCertificate();
            },
            child: Text(
              'Post Certificate',
            ),
          ),
        ],
      ),
    );
  }
}
