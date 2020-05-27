//import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
//
//class CallService {
//  void sendMail(String email)=>launch("mailto:$email");
//}
//
//class RequestPertemuan extends StatefulWidget {
//  @override
//  _RequestPertemuanState createState() => _RequestPertemuanState();
//}
//
//class _RequestPertemuanState extends State<RequestPertemuan> {
//
//  _launchEmail() async {
//    //var url = "mailto:$emailId?subject=Request Materi";
//    const url = "mailto:joinanid@gmail.com?subject=Request_Materi&body=New%20plugin";
//    if(await canLaunch(url)) {
//      await launch(url);
//    } else {
//      throw 'Could not send E-mail';
//    }
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Halaman Request pertemuan'),
//      ),
//      body: SingleChildScrollView(
//        child: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: <Widget>[
//              Text(
//                'Request pertemuan kepada pengajar dengan menuliskan tempat dan tanggal lalu kirimkan melalui email ke tim Joinan',
//              ),
//              SizedBox(height: 18.0),
//              RaisedButton(
//                onPressed: () {
//                  //_launchEmail('joinanid@gmail.com');
//                  _launchEmail();
//                },
//                child: Text('Kirim email'),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
//

//import 'package:flutter/material.dart';
//
//class RequestPertemuan extends StatefulWidget {
//  @override
//  _RequestPertemuanState createState() => _RequestPertemuanState();
//}
//
//class _RequestPertemuanState extends State<RequestPertemuan> {
//
//  TextEditingController tanggalController = TextEditingController();
//  TextEditingController jamController = TextEditingController();
//  TextEditingController lokasiController = TextEditingController();
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Request pertemuan'),
//      ),
//      body: Container(
//        margin: EdgeInsets.all(20.0),
//        child: Column(
//          //mainAxisAlignment: MainAxisAlignment.spaceAround,
//          children: <Widget>[
//            Text(
//              'Tanggal(DD-MM-YYYY)',
//            ),
//            TextField(
//              onChanged: (value) {
//                setState(() {
//                });
//              },
//              controller: tanggalController,
//            ),
//            SizedBox(height: 20.0),
//            //Text(tanggalController.text),
//            Text(
//              'Jam(HH:MM)',
//            ),
//            TextField(
//              onChanged: (value) {
//                setState(() {
//                });
//              },
//              controller: jamController,
//            ),
//            SizedBox(height: 20.0),
//            Text(
//              'Lokasi',
//            ),
//            TextField(
//              onChanged: (value) {
//                setState(() {
//                });
//              },
//              controller: lokasiController,
//            ),
//            SizedBox(height: 80.0),
//            RaisedButton(
//              onPressed: () {},
//              color: Colors.blue,
//              child: Text(
//                'Request',
//                style: TextStyle(
//                  color: Colors.white,
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}

//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:joinan_final_skripsi/main.dart';
import 'package:joinan_final_skripsi/models/availableCourse.dart';

class RequestPertemuan extends StatefulWidget {

  //List list;
  //int index;
  AvailableCourse availableCourse;
  final String username;
  RequestPertemuan({this.availableCourse,this.username});

  @override
  _RequestPertemuanState createState() => _RequestPertemuanState();
}

class _RequestPertemuanState extends State<RequestPertemuan> {

  TextEditingController emailStudentController = TextEditingController();
  TextEditingController namaTeacherController = TextEditingController();
  TextEditingController namaCourseController = TextEditingController();
  TextEditingController tanggalController = TextEditingController();
  TextEditingController jamController = TextEditingController();
  TextEditingController lokasiController = TextEditingController();

  Future<List> _requestPertemuan() {
    var url = "http://$myIP/joinan/requestPertemuan.php";

    http.post(url, body: {
      //"emailStudent": username,
      "namaStudent": namaUser,
      "emailStudent": emailUser,
      "emailTeacher": widget.availableCourse.lecturerEmail,
      "namaTeacher": widget.availableCourse.lecturerName,
      "namaCourse": widget.availableCourse.courseName,
      "tanggal": tanggalController.text,
      "jam": jamController.text,
      "lokasi": lokasiController.text,
      "status": "waiting"
    });
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request pertemuan'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'Nama Student',
                ),
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    //hintText: 'hint',
                    //labelText: 'label'
                    hintText: namaUser,
                  ),
//                  validator: (value) {
//                    if(value.isEmpty) {
//                      return 'Value tidak boleh kosong!';
//                    }
//                    return null;
//                  },
//                  controller: emailStudentController,
                ),
                SizedBox(height: 20.0),
                Text(
                  'Email Student',
                ),
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    //hintText: 'hint',
                    //labelText: 'label'
                    hintText: emailUser,
                  ),
//                  validator: (value) {
//                    if(value.isEmpty) {
//                      return 'Value tidak boleh kosong!';
//                    }
//                    return null;
//                  },
//                  controller: emailStudentController,
                ),
                SizedBox(height: 20.0),
                Text(
                  'Nama Teacher',
                ),
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    hintText: widget.availableCourse.lecturerName,
                  ),
//                  validator: (value) {
//                    if(value.isEmpty) {
//                      return 'Value tidak boleh kosong!';
//                    }
//                    return null;
//                  },
//                  controller: namaTeacherController,
                ),
                SizedBox(height: 20.0),
                Text(
                  'Nama Course',
                ),
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    hintText: widget.availableCourse.courseName,
                  ),
//                  validator: (value) {
//                    if(value.isEmpty) {
//                      return 'Value tidak boleh kosong!';
//                    }
//                    return null;
//                  },
//                  controller: namaCourseController,
                ),
                SizedBox(height: 20.0),
                Text(
                  'Tanggal(DD-MM-YYYY)',
                ),
                TextFormField(
                  validator: (value) {
                    if(value.isEmpty) {
                      return 'Value tidak boleh kosong!';
                    }
                    return null;
                  },
                  controller: tanggalController,
                ),
                SizedBox(height: 20.0),
                //Text(tanggalController.text),
                Text(
                  'Jam(HH:MM)',
                ),
                TextFormField(
                  validator: (value) {
                    if(value.isEmpty) {
                      return 'Value tidak boleh kosong!';
                    }
                    return null;
                  },
                  controller: jamController,
                ),
                SizedBox(height: 20.0),
                Text(
                  'Lokasi',
                ),
                TextFormField(
                  validator: (value) {
                    if(value.isEmpty) {
                      return 'Value tidak boleh kosong!';
                    }
                    return null;
                  },
                  controller: lokasiController,
                ),
                SizedBox(height: 80.0),
                RaisedButton(
                  onPressed: () {
                    if(_formKey.currentState.validate()) {
                      _requestPertemuan();
                      emailStudentController.clear();
                      namaTeacherController.clear();
                      namaCourseController.clear();
                      tanggalController.clear();
                      jamController.clear();
                      lokasiController.clear();
                      _validateRequestPertemuan(context);
                      //Navigator.pop(context);
                    }
                    //_requestPertemuan();
                    //emailStudentController.clear();
                    //namaTeacherController.clear();
                    //namaCourseController.clear();
                    //tanggalController.clear();
                    //jamController.clear();
                    //lokasiController.clear();
                    //_validateRequestPertemuan(context);
                  },
                  color: Colors.blue,
                  child: Text(
                    'Request',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _validateRequestPertemuan(context) async {
  return showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Text('Message'),
      content: Text('Request pertemuan berhasil'),
    ),
    barrierDismissible: true,
  );
}
