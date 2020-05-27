////import 'package:flutter/material.dart';
////
////class FinalQuiz extends StatefulWidget {
////  @override
////  _FinalQuizState createState() => _FinalQuizState();
////}
////
////class _FinalQuizState extends State<FinalQuiz> {
////
////  int _radioValue1 = -1;
////  int correctScore = 0;
////  int _radioValue2 = -1;
////  int _radioValue3 = -1;
////  int _radioValue4 = -1;
////  int _radioValue5 = -1;
////
////
////  void _handleRadioValueChange1(int value) {
////    setState(() {
////      _radioValue1 = value;
////
////      switch(_radioValue1) {
////        case 0:
////          correctScore++;
////          break;
////        case 1:
////          break;
////        case 2:
////          break;
////      }
////    });
////  }
////
////  void _handleRadioValueChange2(int value) {
////    setState(() {
////      _radioValue2 = value;
////
////      switch(_radioValue2) {
////        case 0:
////          correctScore++;
////          break;
////        case 1:
////          break;
////        case 2:
////          break;
////      }
////    });
////  }
////
////  void _handleRadioValueChange3(int value) {
////    setState(() {
////      _radioValue3 = value;
////
////      switch(_radioValue3) {
////        case 0:
////          correctScore++;
////          break;
////        case 1:
////          break;
////        case 2:
////          break;
////      }
////    });
////  }
////
////  void _handleRadioValueChange4(int value) {
////    setState(() {
////      _radioValue4 = value;
////
////      switch(_radioValue4) {
////        case 0:
////          correctScore++;
////          break;
////        case 1:
////          break;
////        case 2:
////          break;
////      }
////    });
////  }
////
////  void _handleRadioValueChange5(int value) {
////    setState(() {
////      _radioValue5 = value;
////
////      switch(_radioValue5) {
////        case 0:
////          correctScore++;
////          break;
////        case 1:
////          break;
////        case 2:
////          break;
////      }
////    });
////  }
////
////  @override
////  Widget build(BuildContext context) {
////    return Scaffold(
////      appBar: AppBar(
////        title: Text('Final Quiz'),
////      ),
////      body: Container(
////        padding: EdgeInsets.all(8.0),
////        child: SingleChildScrollView(
////          child: Column(
////            mainAxisAlignment: MainAxisAlignment.center,
////            children: <Widget>[
////              Text(
////                'Pilih jawaban yang menurut anda benar',
////                style: TextStyle(
////                  fontSize: 20.0,
////                  fontWeight: FontWeight.bold,
////                ),
////              ),
////              Padding(
////                padding: EdgeInsets.all(8.0),
////              ),
////              Divider(
////                height: 5.0,
////                color: Colors.black,
////              ),
////              Padding(
////                padding: EdgeInsets.all(8.0),
////              ),
////              Text(
////                //'Soal 1 : ',
////                '1. Sintaks java untuk melakukan kompilasi terhadap berkas program adalah :',
////                style: TextStyle(
////                  fontSize: 18.0,
////                  fontWeight: FontWeight.bold,
////                ),
////              ),
////              SingleChildScrollView(
////                scrollDirection: Axis.horizontal,
////                child: Row(
////                  mainAxisAlignment: MainAxisAlignment.center,
////                  children: <Widget>[
////                    Radio(
////                      value: 0,
////                      groupValue: _radioValue1,
////                      onChanged: _handleRadioValueChange1,
////                    ),
////                    Text(
////                      'javac',
////                      style: TextStyle(
////                        fontSize: 16.0,
////                      ),
////                    ),
////                    Radio(
////                      value: 1,
////                      groupValue: _radioValue1,
////                      onChanged: _handleRadioValueChange1,
////                    ),
////                    Text(
////                      'java',
////                      style: TextStyle(
////                        fontSize: 16.0,
////                      ),
////                    ),
////                    Radio(
////                      value: 2,
////                      groupValue: _radioValue1,
////                      onChanged: _handleRadioValueChange1,
////                    ),
////                    Text(
////                      'javaclass',
////                      style: TextStyle(
////                        fontSize: 16.0,
////                      ),
////                    ),
////                    Radio(
////                      value: 3,
////                      groupValue: _radioValue1,
////                      onChanged: _handleRadioValueChange1,
////                    ),
////                    Text(
////                      'javax',
////                      style: TextStyle(
////                        fontSize: 16.0,
////                      ),
////                    ),
////                  ],
////                ),
////              ),
////              Divider(
////                height: 5.0,
////                color: Colors.black,
////              ),
////              Padding(
////                padding: EdgeInsets.all(8.0),
////              ),
////              Column(
////                children: <Widget>[
////                  Text(
////                    '2. Diantara perintah untuk mencetak berikut, yang benar adalah',
////                    style: TextStyle(
////                      fontSize: 18.0,
////                      fontWeight: FontWeight.bold,
////                    ),
////                  ),
////                  SingleChildScrollView(
////                    scrollDirection: Axis.horizontal,
////                    child: Row(
////                      mainAxisAlignment: MainAxisAlignment.center,
////                      children: <Widget>[
////                        Radio(
////                          value: 0,
////                          groupValue: _radioValue2,
////                          onChanged: _handleRadioValueChange2,
////                        ),
////                        Text(
////                          'System.out.println(“Mid Java”)',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                        Radio(
////                          value: 1,
////                          groupValue: _radioValue2,
////                          onChanged: _handleRadioValueChange2,
////                        ),
////                        Text(
////                          'System.Out.println(“Mid Java”)',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                        Radio(
////                          value: 2,
////                          groupValue: _radioValue2,
////                          onChanged: _handleRadioValueChange2,
////                        ),
////                        Text(
////                          'System.out.Println(“Mid Java”)',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                        Radio(
////                          value: 3,
////                          groupValue: _radioValue2,
////                          onChanged: _handleRadioValueChange2,
////                        ),
////                        Text(
////                          'System.Out.Println(“Mid Java”)',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                      ],
////                    ),
////                  ),
////                  Divider(
////                    height: 5.0,
////                    color: Colors.black,
////                  ),
////                  Padding(
////                    padding: EdgeInsets.all(8.0),
////                  ),
////                ],
////              ),
////              Column(
////                children: <Widget>[
////                  Text(
////                    '3. Stream yang berguna untuk mengirim keluaran ke layar adalah',
////                    style: TextStyle(
////                      fontSize: 18.0,
////                      fontWeight: FontWeight.bold,
////                    ),
////                  ),
////                  SingleChildScrollView(
////                    scrollDirection: Axis.horizontal,
////                    child: Row(
////                      mainAxisAlignment: MainAxisAlignment.center,
////                      children: <Widget>[
////                        Radio(
////                          value: 0,
////                          groupValue: _radioValue3,
////                          onChanged: _handleRadioValueChange3,
////                        ),
////                        Text(
////                          'System.out.',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                        Radio(
////                          value: 1,
////                          groupValue: _radioValue3,
////                          onChanged: _handleRadioValueChange3,
////                        ),
////                        Text(
////                          'System.in.',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                        Radio(
////                          value: 2,
////                          groupValue: _radioValue3,
////                          onChanged: _handleRadioValueChange3,
////                        ),
////                        Text(
////                          'System.err',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                        Radio(
////                          value: 3,
////                          groupValue: _radioValue3,
////                          onChanged: _handleRadioValueChange3,
////                        ),
////                        Text(
////                          'System.exit',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                      ],
////                    ),
////                  ),
////                  Divider(
////                    height: 5.0,
////                    color: Colors.black,
////                  ),
////                  Padding(
////                    padding: EdgeInsets.all(8.0),
////                  ),
////                ],
////              ),
////              Column(
////                children: <Widget>[
////                  Text(
////                    '4. Hasil kompilasi dari berkas java adalah',
////                    style: TextStyle(
////                      fontSize: 18.0,
////                      fontWeight: FontWeight.bold,
////                    ),
////                  ),
////                  SingleChildScrollView(
////                    scrollDirection: Axis.horizontal,
////                    child: Row(
////                      mainAxisAlignment: MainAxisAlignment.center,
////                      children: <Widget>[
////                        Radio(
////                          value: 0,
////                          groupValue: _radioValue4,
////                          onChanged: _handleRadioValueChange4,
////                        ),
////                        Text(
////                          'File Bytecode',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                        Radio(
////                          value: 1,
////                          groupValue: _radioValue4,
////                          onChanged: _handleRadioValueChange4,
////                        ),
////                        Text(
////                          'File BAK',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                        Radio(
////                          value: 2,
////                          groupValue: _radioValue4,
////                          onChanged: _handleRadioValueChange4,
////                        ),
////                        Text(
////                          'File executable',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                        Radio(
////                          value: 3,
////                          groupValue: _radioValue4,
////                          onChanged: _handleRadioValueChange4,
////                        ),
////                        Text(
////                          'File class',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                      ],
////                    ),
////                  ),
////                  Divider(
////                    height: 5.0,
////                    color: Colors.black,
////                  ),
////                  Padding(
////                    padding: EdgeInsets.all(8.0),
////                  ),
////                ],
////              ),
////              Column(
////                children: <Widget>[
////                  Text(
////                    '5. Fungsi method System.in dalam java adalah',
////                    style: TextStyle(
////                      fontSize: 18.0,
////                      fontWeight: FontWeight.bold,
////                    ),
////                  ),
////                  SingleChildScrollView(
////                    scrollDirection: Axis.horizontal,
////                    child: Row(
////                      mainAxisAlignment: MainAxisAlignment.center,
////                      children: <Widget>[
////                        Radio(
////                          value: 0,
////                          groupValue: _radioValue5,
////                          onChanged: _handleRadioValueChange5,
////                        ),
////                        Text(
////                          'Menangani pembacaan dari keyboard',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                        Radio(
////                          value: 1,
////                          groupValue: _radioValue5,
////                          onChanged: _handleRadioValueChange5,
////                        ),
////                        Text(
////                          'Mengirimkan keluaran ke layar',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                        Radio(
////                          value: 2,
////                          groupValue: _radioValue5,
////                          onChanged: _handleRadioValueChange5,
////                        ),
////                        Text(
////                          'Menampilkan pesan kesalahan',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                        Radio(
////                          value: 3,
////                          groupValue: _radioValue5,
////                          onChanged: _handleRadioValueChange5,
////                        ),
////                        Text(
////                          'Menangani suatu objek',
////                          style: TextStyle(
////                            fontSize: 16.0,
////                          ),
////                        ),
////                      ],
////                    ),
////                  ),
////                  Divider(
////                    height: 5.0,
////                    color: Colors.black,
////                  ),
////                  Padding(
////                    padding: EdgeInsets.all(8.0),
////                  ),
////                ],
////              ),
////              RaisedButton(
////                onPressed: () {
////                  validateJawaban();
////                },
////                color: Colors.blue,
////                child: Text(
////                  'Validasi jawaban',
////                  style: TextStyle(
////                    color: Colors.white,
////                  ),
////                ),
////              ),
////              Padding(
////                padding: EdgeInsets.all(4.0),
////              ),
////              RaisedButton(
////                onPressed: () {
////                  resetSelection();
////                },
////                color: Colors.blue,
////                child: Text(
////                  'Reset jawaban',
////                  style: TextStyle(
////                    color: Colors.white,
////                  ),
////                ),
////              ),
////            ],
////          ),
////        ),
////      ),
////    );
////  }
////  void resetSelection() {
////    _handleRadioValueChange1(-1);
////    _handleRadioValueChange2(-1);
////    _handleRadioValueChange3(-1);
////    _handleRadioValueChange4(-1);
////    _handleRadioValueChange5(-1);
////    setState(() {
////      correctScore = 0;
////    });
////  }
////
////  Future<void> validateJawaban() async {
////    if(_radioValue1 == -1 && _radioValue2 == -1 && _radioValue3 == -1 && _radioValue4 == -1 && _radioValue5 == -1) {
////      return showDialog(
////        context: context,
////        builder: (_) => AlertDialog(
////          title: Text('Tolong pilih jawaban!'),
////          content: Text('Anda belum memilih jawaban pada soal yang disediakan'),
////        ),
////        barrierDismissible: true,
////      );
////    } else if(correctScore == 5) {
////      return showDialog(
////        context: context,
////        builder: (_) => AlertDialog(
////          title: Text('Hasil jawaban anda : '),
////          content: Text('Anda berhasil menjawab $correctScore dengan benar dari 5 soal, e-certificate dapat di cek pada tab profile'),
////        ),
////        barrierDismissible: true,
////      );
////    } else {
////      return showDialog(
////        context: context,
////        builder: (_) => AlertDialog(
////          title: Text('Hasil jawaban anda : '),
////          content: Text('Anda berhasil menjawab $correctScore dengan benar dari 5 soal'),
////        ),
////        barrierDismissible: true,
////      );
////    }
////  }
////}
//


//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:joinan_final_skripsi/main.dart';
//import 'package:joinan_final_skripsi/models/availableCourse.dart';
//import 'package:joinan_final_skripsi/models/certificate.dart';
//import 'package:joinan_final_skripsi/models/latihan.dart';
//import 'package:http/http.dart' as http;
//
//class FinalQuiz extends StatefulWidget {
//
//  final String username;
//  Latihan latihan;
//  AvailableCourse availableCourse;
//
//  FinalQuiz({this.latihan,this.availableCourse,this.username});
//
//  @override
//  _FinalQuizState createState() => _FinalQuizState();
//}
//
//class _FinalQuizState extends State<FinalQuiz> {
//
//  List<Latihan> _latihan = List<Latihan>();
//
//  Future<List<Latihan>> getLatihan() async {
//    var url = 'http://192.168.64.2/my_store/get_latihan.php';
//    var response = await http.get(url);
//
//    var latihans = List<Latihan>();
//
//    if (response.statusCode == 200) {
//      var latihansJson = json.decode(response.body);
//      for (var latihanJson in latihansJson) {
//        latihans.add(Latihan.fromJson(latihanJson));
//      }
//    }
//    return latihans;
//  }
//
//  //cara 2
////  Future<dynamic> getLatihan2() async {
////    final response = await http.get('http://192.168.64.2/my_store/get_latihan.php');
////    var data = json.decode(response.body);
////    return data;
////  }
//
//
////  Future<List> _register() async {
////    var url = "http://192.168.64.2/my_store/adddata.php";
////
////    http.post(url, body: {
////      "username": user.text,
////      "password": password.text,
////    });
//
//  Future<List> addCertificate() {
//    var url = 'http://192.168.64.2/my_store/add_certificate.php';
//    http.post(url,body: {
//      //"courseID": widget.availableCourse.courseID,
//      //"certificateID": "2",
//      "courseID": "1",
//      "courseName": "testCourseName",
//      //"courseName": "Java",
//      "userEmail": "testUserEmail",
//      //"userEmail": "student@gmail.com",
//      //"certificateContent": 'Certificate untuk course ${widget.availableCourse.courseName}'
//      "certificateContent": "Certificate untuk course Java",
//    });
//    print(widget.availableCourse.courseID);
//    print(widget.availableCourse.courseName);
//    print(username);
//    print(widget.availableCourse.courseName);
//  }
//
//  @override
//  void initState() {
//    getLatihan().then((value) {
//      setState(() {
//        _latihan.addAll(value);
//      });
//    });
//    super.initState();
//  }
//
//  int _radioValue1 = -1;
//  int correctScore = 0;
//  int _radioValue2 = -1;
//  int _radioValue3 = -1;
//  int _radioValue4 = -1;
//  int _radioValue5 = -1;
//
//
//  void _handleRadioValueChange1(int value) {
//    setState(() {
//      _radioValue1 = value;
//
//      switch (_radioValue1) {
//        case 0:
//          correctScore++;
//          break;
//        case 1:
//          break;
//        case 2:
//          break;
//        case 3:
//          break;
//      }
//    });
//  }
//
//  void _handleRadioValueChange2(int value) {
//    setState(() {
//      _radioValue2 = value;
//
//      switch (_radioValue2) {
//        case 0:
//          correctScore++;
//          break;
//        case 1:
//          break;
//        case 2:
//          break;
//        case 3:
//          break;
//      }
//    });
//  }
//
//  void _handleRadioValueChange3(int value) {
//    setState(() {
//      _radioValue3 = value;
//
//      switch (_radioValue3) {
//        case 0:
//          correctScore++;
//          break;
//        case 1:
//          break;
//        case 2:
//          break;
//        case 3:
//          break;
//      }
//    });
//  }
//
//  void _handleRadioValueChange4(int value) {
//    setState(() {
//      _radioValue4 = value;
//
//      switch (_radioValue4) {
//        case 0:
//          correctScore++;
//          break;
//        case 1:
//          break;
//        case 2:
//          break;
//        case 3:
//          break;
//      }
//    });
//  }
//
//  void _handleRadioValueChange5(int value) {
//    setState(() {
//      _radioValue5 = value;
//
//      switch (_radioValue5) {
//        case 0:
//          correctScore++;
//          break;
//        case 1:
//          break;
//        case 2:
//          break;
//        case 3:
//          break;
//      }
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Final quiz untuk e-certificate'),
//      ),
//      body: ListView.builder(
//        itemCount: _latihan.length,
//        itemBuilder: (context, index) {
//          return Container(
//            padding: EdgeInsets.all(8.0),
//            child: SingleChildScrollView(
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Text(
//                    'Pilih jawaban yang menurut anda benar',
//                    style: TextStyle(
//                      fontSize: 20.0,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.all(8.0),
//                  ),
//                  Divider(
//                    height: 5.0,
//                    color: Colors.black,
//                  ),
//                  Padding(
//                    padding: EdgeInsets.all(8.0),
//                  ),
//                  Text(
//                    //'Soal 1 : ',
//                    //'1. Sintaks java untuk melakukan kompilasi terhadap berkas program adalah :',
//                    _latihan[index].soal,
//                    style: TextStyle(
//                      fontSize: 18.0,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                  SingleChildScrollView(
//                    scrollDirection: Axis.horizontal,
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: <Widget>[
//                        Radio(
//                          value: 0,
//                          groupValue: _radioValue1,
//                          onChanged: _handleRadioValueChange1,
//                        ),
//                        Text(
//                          //'javac',
//                          _latihan[index].a,
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 1,
//                          groupValue: _radioValue1,
//                          onChanged: _handleRadioValueChange1,
//                        ),
//                        Text(
//                          //'java',
//                          _latihan[index].b,
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 2,
//                          groupValue: _radioValue1,
//                          onChanged: _handleRadioValueChange1,
//                        ),
//                        Text(
//                          //'javaclass',
//                          _latihan[index].c,
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 3,
//                          groupValue: _radioValue1,
//                          onChanged: _handleRadioValueChange1,
//                        ),
//                        Text(
//                          //'javax',
//                          _latihan[index].d,
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Divider(
//                    height: 5.0,
//                    color: Colors.black,
//                  ),
//                  Padding(
//                    padding: EdgeInsets.all(8.0),
//                  ),
//                  Column(
//                    children: <Widget>[
//                      Text(
//                        //'2. Diantara perintah untuk mencetak berikut, yang benar adalah',
//                        _latihan[index].soal,
//                        style: TextStyle(
//                          fontSize: 18.0,
//                          fontWeight: FontWeight.bold,
//                        ),
//                      ),
//                      SingleChildScrollView(
//                        scrollDirection: Axis.horizontal,
//                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            Radio(
//                              value: 0,
//                              groupValue: _radioValue2,
//                              onChanged: _handleRadioValueChange2,
//                            ),
//                            Text(
//                              //'System.out.println(“Mid Java”)',
//                              _latihan[index].a,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                            Radio(
//                              value: 1,
//                              groupValue: _radioValue2,
//                              onChanged: _handleRadioValueChange2,
//                            ),
//                            Text(
//                              //'System.Out.println(“Mid Java”)',
//                              _latihan[index].b,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                            Radio(
//                              value: 2,
//                              groupValue: _radioValue2,
//                              onChanged: _handleRadioValueChange2,
//                            ),
//                            Text(
//                              //'System.out.Println(“Mid Java”)',
//                              _latihan[index].c,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                            Radio(
//                              value: 3,
//                              groupValue: _radioValue2,
//                              onChanged: _handleRadioValueChange2,
//                            ),
//                            Text(
//                              //'System.Out.Println(“Mid Java”)',
//                              _latihan[index].d,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                      Divider(
//                        height: 5.0,
//                        color: Colors.black,
//                      ),
//                      Padding(
//                        padding: EdgeInsets.all(8.0),
//                      ),
//                    ],
//                  ),
//                  Column(
//                    children: <Widget>[
//                      Text(
//                        //'3. Stream yang berguna untuk mengirim keluaran ke layar adalah',
//                        _latihan[index].soal,
//                        style: TextStyle(
//                          fontSize: 18.0,
//                          fontWeight: FontWeight.bold,
//                        ),
//                      ),
//                      SingleChildScrollView(
//                        scrollDirection: Axis.horizontal,
//                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            Radio(
//                              value: 0,
//                              groupValue: _radioValue3,
//                              onChanged: _handleRadioValueChange3,
//                            ),
//                            Text(
//                              //'System.out.',
//                              _latihan[index].a,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                            Radio(
//                              value: 1,
//                              groupValue: _radioValue3,
//                              onChanged: _handleRadioValueChange3,
//                            ),
//                            Text(
//                              //'System.in.',
//                              _latihan[index].b,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                            Radio(
//                              value: 2,
//                              groupValue: _radioValue3,
//                              onChanged: _handleRadioValueChange3,
//                            ),
//                            Text(
//                              //'System.err',
//                              _latihan[index].c,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                            Radio(
//                              value: 3,
//                              groupValue: _radioValue3,
//                              onChanged: _handleRadioValueChange3,
//                            ),
//                            Text(
//                              //'System.exit',
//                              _latihan[index].d,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                      Divider(
//                        height: 5.0,
//                        color: Colors.black,
//                      ),
//                      Padding(
//                        padding: EdgeInsets.all(8.0),
//                      ),
//                    ],
//                  ),
//                  Column(
//                    children: <Widget>[
//                      Text(
//                        //'4. Hasil kompilasi dari berkas java adalah',
//                        _latihan[index].soal,
//                        style: TextStyle(
//                          fontSize: 18.0,
//                          fontWeight: FontWeight.bold,
//                        ),
//                      ),
//                      SingleChildScrollView(
//                        scrollDirection: Axis.horizontal,
//                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            Radio(
//                              value: 0,
//                              groupValue: _radioValue4,
//                              onChanged: _handleRadioValueChange4,
//                            ),
//                            Text(
//                              //'File Bytecode',
//                              _latihan[index].a,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                            Radio(
//                              value: 1,
//                              groupValue: _radioValue4,
//                              onChanged: _handleRadioValueChange4,
//                            ),
//                            Text(
//                              //'File BAK',
//                              _latihan[index].b,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                            Radio(
//                              value: 2,
//                              groupValue: _radioValue4,
//                              onChanged: _handleRadioValueChange4,
//                            ),
//                            Text(
//                              //'File executable',
//                              _latihan[index].c,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                            Radio(
//                              value: 3,
//                              groupValue: _radioValue4,
//                              onChanged: _handleRadioValueChange4,
//                            ),
//                            Text(
//                              //'File class',
//                              _latihan[index].d,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                      Divider(
//                        height: 5.0,
//                        color: Colors.black,
//                      ),
//                      Padding(
//                        padding: EdgeInsets.all(8.0),
//                      ),
//                    ],
//                  ),
//                  Column(
//                    children: <Widget>[
//                      Text(
//                        //'5. Fungsi method System.in dalam java adalah',
//                        _latihan[index].soal,
//                        style: TextStyle(
//                          fontSize: 18.0,
//                          fontWeight: FontWeight.bold,
//                        ),
//                      ),
//                      SingleChildScrollView(
//                        scrollDirection: Axis.horizontal,
//                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            Radio(
//                              value: 0,
//                              groupValue: _radioValue5,
//                              onChanged: _handleRadioValueChange5,
//                            ),
//                            Text(
//                              //'Menangani pembacaan dari keyboard',
//                              _latihan[index].a,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                            Radio(
//                              value: 1,
//                              groupValue: _radioValue5,
//                              onChanged: _handleRadioValueChange5,
//                            ),
//                            Text(
//                              //'Mengirimkan keluaran ke layar',
//                              _latihan[index].b,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                            Radio(
//                              value: 2,
//                              groupValue: _radioValue5,
//                              onChanged: _handleRadioValueChange5,
//                            ),
//                            Text(
//                              //'Menampilkan pesan kesalahan',
//                              _latihan[index].c,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                            Radio(
//                              value: 3,
//                              groupValue: _radioValue5,
//                              onChanged: _handleRadioValueChange5,
//                            ),
//                            Text(
//                              //'Menangani suatu objek',
//                              _latihan[index].d,
//                              style: TextStyle(
//                                fontSize: 16.0,
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                      Divider(
//                        height: 5.0,
//                        color: Colors.black,
//                      ),
//                      Padding(
//                        padding: EdgeInsets.all(8.0),
//                      ),
//                    ],
//                  ),
//                  RaisedButton(
//                    onPressed: () {
//                      validateJawaban();
//                    },
//                    color: Colors.blue,
//                    child: Text(
//                      'Validasi jawaban',
//                      style: TextStyle(
//                        color: Colors.white,
//                      ),
//                    ),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.all(4.0),
//                  ),
//                  RaisedButton(
//                    onPressed: () {
//                      resetSelection();
//                    },
//                    color: Colors.blue,
//                    child: Text(
//                      'Reset jawaban',
//                      style: TextStyle(
//                        color: Colors.white,
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          );
//        },
//      ),
//    );
//  }
//
//  void resetSelection() {
//    _handleRadioValueChange1(-1);
//    _handleRadioValueChange2(-1);
//    _handleRadioValueChange3(-1);
//    _handleRadioValueChange4(-1);
//    _handleRadioValueChange5(-1);
//    setState(() {
//      correctScore = 0;
//    });
//  }
//
//  Future<void> validateJawaban() async {
//    if(_radioValue1 == -1 && _radioValue2 == -1 && _radioValue3 == -1 && _radioValue4 == -1 && _radioValue5 == -1) {
//      return showDialog(
//        context: context,
//        builder: (_) => AlertDialog(
//          title: Text('Tolong pilih jawaban!'),
//          content: Text('Anda belum memilih jawaban pada soal yang disediakan'),
//        ),
//        barrierDismissible: true,
//      );
//    } else if(correctScore == 5) {
//      addCertificate();
//      return showDialog(
//        context: context,
//        builder: (_) => AlertDialog(
//          title: Text('Hasil jawaban anda : '),
//          content: Text('Anda berhasil menjawab $correctScore dengan benar dari 5 soal, e-certificate dapat di cek pada tab profile'),
//        ),
//        barrierDismissible: true,
//      );
//    } else {
//      return showDialog(
//        context: context,
//        builder: (_) => AlertDialog(
//          title: Text('Hasil jawaban anda : '),
//          content: Text('Anda berhasil menjawab $correctScore dengan benar dari 5 soal'),
//        ),
//        barrierDismissible: true,
//      );
//    }
//  }
//}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:joinan_final_skripsi/main.dart';
import 'package:joinan_final_skripsi/models/availableCourse.dart';
import 'package:joinan_final_skripsi/models/certificate.dart';
import 'package:joinan_final_skripsi/models/latihan.dart';
import 'package:http/http.dart' as http;
import 'package:joinan_final_skripsi/models/quiz.dart';

class FinalQuiz extends StatefulWidget {

  AvailableCourse availableCourse;
  final String username;

  FinalQuiz({this.availableCourse,this.username});

  @override
  _FinalQuizState createState() => _FinalQuizState();
}

class _FinalQuizState extends State<FinalQuiz> {

  //List<Latihan> _latihan = List<Latihan>();
  int nilai = 0;
  List<Quiz> _quiz = List<Quiz>();

//  Future<List<Latihan>> getLatihan() async {
//    var url = 'http://192.168.64.2/my_store/get_latihan.php';
//    var response = await http.get(url);
//
//    var latihans = List<Latihan>();
//
//    if (response.statusCode == 200) {
//      var latihansJson = json.decode(response.body);
//      for (var latihanJson in latihansJson) {
//        latihans.add(Latihan.fromJson(latihanJson));
//      }
//    }
//    return latihans;
//  }

  Future<List<Quiz>> getQuiz() async {
    var url = 'http://$myIP/joinan/get_quiz.php';
    var response = await http.get(url);

    var quizzes = List<Quiz>();

    if(response.statusCode == 200) {
      var quizzessJson = json.decode(response.body);
      for(var quizJson in quizzessJson) {
        if(quizJson['courseID'] == widget.availableCourse.courseID) {
          quizzes.add(Quiz.fromJson(quizJson));
        }
      }
    }
    return quizzes;
  }

  //cara 2
//  Future<dynamic> getLatihan2() async {
//    final response = await http.get('http://192.168.64.2/my_store/get_latihan.php');
//    var data = json.decode(response.body);
//    return data;
//  }

  List<Certificate> _certificates = List<Certificate>();

  Future<List<Certificate>> fetchCertificates() async {
    var url = 'http://$myIP/joinan/get_certificate.php';
    var response = await http.get(url);

    var certificates = List<Certificate>();

    if (response.statusCode == 200) {
      var certificatesJson = json.decode(response.body);
      for (var certificateJson in certificatesJson) {
        if(certificateJson['userEmail'] == emailUser) {
          certificates.add(Certificate.fromJson(certificateJson));
          if(certificateJson['courseID'] == widget.availableCourse.courseID) {
            print('sudah pernah dapat certificate ini');
            sudahDapatCertificate = 1;
          }
        }
      }
    }
    print(sudahDapatCertificate);
    return certificates;
  }

  void _addCertificate() {
    var url = "http://$myIP/joinan/add_certificate.php";
    //var url = "http://192.168.64.2/my_store/add_certificate2.php";
    http.post(url,body: {
      "courseID": widget.availableCourse.courseID,
      "courseName": widget.availableCourse.courseName,
      "userEmail": emailUser,
      "certificateContent": 'Certificate untuk course ${widget.availableCourse.courseName}'
    });
    print('method _addCertificate jalan');
  }

//  Future<List> _addCertificate() async {
//    var url = "http://192.168.64.2/my_store/add_certificate.php";
//    //var url = "http://192.168.64.2/my_store/add_certificate2.php";
//    http.post(url,body: {
//      "courseID": widget.availableCourse.courseID,
//      "courseName": widget.availableCourse.courseName,
//      "userEmail": emailUser,
//      "certificateContent": 'Certificate untuk course ${widget.availableCourse.courseName}'
//    });
//    print('method _addCertificate jalan');
//  }

  Future<void> _notComplete() async {
    return showDialog(
      context: context,
      builder: (_) =>
          AlertDialog(
            title: Text('Tolong lengkapi jawaban!'),
            content: Text(
                'Anda belum melengkapi seluruh jawaban'),
          ),
      barrierDismissible: true,
    );
  }

  @override
  void initState() {
    getQuiz().then((value) {
      setState(() {
        _quiz.addAll(value);
      });
    });

    fetchCertificates().then((value) {
      setState(() {
        _certificates.addAll(value);
      });
    });

    super.initState();
  }

  int correctScore = 0;
  int correctSelected = 0;
  int notComplete = 0;
  int sudahDapatCertificate = 0;

  List _radioValue = List.filled(10, -1);
  List _correctCheck = List.filled(10, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Final Quiz untuk e-certificate'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Pilih jawaban yang menurut anda benar',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _quiz.length,
              itemBuilder: (context, index) {
                //int tempIndex = index;
                return Container(
                  padding: EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        Divider(
                          height: 5.0,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        Text(
                          //'Soal 1 : ',
                          //'1. Sintaks java untuk melakukan kompilasi terhadap berkas program adalah :',
                          '${index+1}. ${_quiz[index].soal}',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Radio(
                                value: 'a',
                                //groupValue: _radioValue,
                                groupValue: _radioValue[index],
                                //onChanged: _handleRadioValueChange,
                                onChanged: (value) {
                                  setState(() {
                                    _radioValue[index] = value;
                                    if(_radioValue[index] == _quiz[index].kunci && correctSelected == 0){
                                      _correctCheck[index] = 1;
                                      //correctScore++;
                                      //correctSelected = 1;
                                      print(_quiz[index].id_soal);
                                      print(_quiz[index].courseID);
                                      print(_quiz[index].soal);
                                      print(_quiz[index].a);
                                      print(_quiz[index].b);
                                      print(_quiz[index].c);
                                      print(_quiz[index].d);
                                      print(_quiz[index].kunci);
                                      print(correctScore);
                                      //print(correctSelected);
                                    }else if(_radioValue[index] != _quiz[index].kunci){
                                      //correctScore = 0;
                                      print(correctScore);
                                    }
                                  });
                                },
                              ),
                              Text(
                                //'javac',
                                _quiz[index].a,
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Radio(
                                value: 'b',
                                groupValue: _radioValue[index],
                                //onChanged: _handleRadioValueChange,
                                onChanged: (value) {
                                  setState(() {
                                    _radioValue[index] = value;
                                    if(_radioValue[index] == _quiz[index].kunci && correctSelected == 0){
                                      _correctCheck[index] = 1;
                                      //correctScore++;
                                      //correctSelected = 1;
                                      print(_quiz[index].id_soal);
                                      print(_quiz[index].courseID);
                                      print(_quiz[index].soal);
                                      print(_quiz[index].a);
                                      print(_quiz[index].b);
                                      print(_quiz[index].c);
                                      print(_quiz[index].d);
                                      print(_quiz[index].kunci);
                                      print(correctScore);
                                      //print(correctSelected);
                                    }else if(_radioValue[index] != _quiz[index].kunci){
                                      //correctScore = 0;
                                      print(correctScore);
                                    }
                                  });
                                },
                              ),
                              Text(
                                //'java',
                                _quiz[index].b,
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Radio(
                                value: 'c',
                                groupValue: _radioValue[index],
                                //onChanged: _handleRadioValueChange,
                                onChanged: (value) {
                                  setState(() {
                                    _radioValue[index] = value;
                                    if(_radioValue[index] == _quiz[index].kunci && correctSelected == 0){
                                      _correctCheck[index] = 1;
                                      //correctScore++;
                                      //correctSelected = 1;
                                      print(_quiz[index].id_soal);
                                      print(_quiz[index].courseID);
                                      print(_quiz[index].soal);
                                      print(_quiz[index].a);
                                      print(_quiz[index].b);
                                      print(_quiz[index].c);
                                      print(_quiz[index].d);
                                      print(_quiz[index].kunci);
                                      print(correctScore);
                                      //print(correctSelected);
                                    }else if(_radioValue[index] != _quiz[index].kunci){
                                      //correctScore = 0;
                                      print(correctScore);
                                    }
                                  });
                                },
                              ),
                              Text(
                                //'javaclass',
                                _quiz[index].c,
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Radio(
                                value: 'd',
                                groupValue: _radioValue[index],
                                //onChanged: _handleRadioValueChange();
                                onChanged: (value) {
                                  setState(() {
                                    _radioValue[index] = value;
                                    if(_radioValue[index] == _quiz[index].kunci && correctSelected == 0){
                                      _correctCheck[index] = 1;
                                      //correctScore++;
                                      //correctSelected = 1;
                                      print(_quiz[index].id_soal);
                                      print(_quiz[index].courseID);
                                      print(_quiz[index].soal);
                                      print(_quiz[index].a);
                                      print(_quiz[index].b);
                                      print(_quiz[index].c);
                                      print(_quiz[index].d);
                                      print(_quiz[index].kunci);
                                      print(correctScore);
                                      //print(correctSelected);
                                    }else if(_radioValue[index] != _quiz[index].kunci){
                                      //correctScore = 0;
                                      print(correctScore);
                                    }
                                  });
                                },
                              ),
                              Text(
                                //'javax',
                                _quiz[index].d,
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 5.0,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          RaisedButton(
            onPressed: () {
              correctScore = 0;
              nilai = 0;

              for(int i = 0; i < 10; i++)
              {
                if(_radioValue[i] == -1) {
                  notComplete = 1;
                  correctScore = 0;
                  _notComplete();
                  break;
                }else {
                  notComplete = 0;
                }
              }

//              for(int i = 0; i < 10; i++)
//              {
//                if(_correctCheck[i] == 1){
//                  correctScore++;
//                }
//              }

              for(int i = 0; i <10; i++)
              {
                if(_radioValue[i] == _quiz[i].kunci) {
                  correctScore++;
                  nilai += 10;
                }
              }

              if(notComplete == 0) {
                validateJawaban();
                if(correctScore == 10 && sudahDapatCertificate == 0){
                  _addCertificate();
                  print('dapat certificate');
                  sudahDapatCertificate = 1;
                  print(sudahDapatCertificate);
                }
              }

              //validateJawaban();
              //_addCertificate();
//              if(correctScore == 10){
//                _addCertificate();
//                print('dapat certificate');
//              }
              //Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => AvailableCourseDetailEnrolled(availableCourse: widget.availableCourse,username: widget.username,)));
              //correctScore = 0;
              //print('jawaban benar : $correctScore');
            },
            color: Colors.blue,
            child: Text(
              'Validasi jawaban',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
          ),
          RaisedButton(
            onPressed: () {
              resetSelection();
            },
            color: Colors.blue,
            child: Text(
              'Reset jawaban',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void resetSelection() {
    setState(() {
      //_radioValue[index] = -1;
      for(int i = 0; i < 10; i++)
      {
        _radioValue[i] = -1;
      }
      correctScore = 0;
    });
  }

  Future<void> validateJawaban() async {
    if(_radioValue[0] == -1 && _radioValue[1] == -1 && _radioValue[2] == -1 &&
        _radioValue[3] == -1 && _radioValue[4] == -1 && _radioValue[5] == -1 && _radioValue[6] == -1 && _radioValue[7] == -1 &&
    _radioValue[8] == -1 && _radioValue[9] == -1) {
      return showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Tolong pilih jawaban!'),
          content: Text('Anda belum memilih jawaban pada soal yang disediakan'),
        ),
        barrierDismissible: true,
      );
    } else if(correctScore == 10) {
      //addCertificate();
      return showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Hasil jawaban anda : '),
          content: Text('Anda berhasil menjawab $correctScore dengan benar dari 10 soal, nilai anda $nilai dan e-certificate dapat di cek pada tab profile'),
        ),
        barrierDismissible: true,
      );
    } else {
      return showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Hasil jawaban anda : '),
          content: Text('Anda berhasil menjawab $correctScore dengan benar dari 10 soal, nilai anda $nilai'),
        ),
        barrierDismissible: true,
      );
    }
  }
}