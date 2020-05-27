//import 'package:flutter/material.dart';
//
//class Latihan extends StatefulWidget {
//  @override
//  _LatihanState createState() => _LatihanState();
//}
//
//class _LatihanState extends State<Latihan> {
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
//      switch(_radioValue1) {
//        case 0:
//          correctScore++;
//          break;
//        case 1:
//          break;
//        case 2:
//          break;
//      }
//    });
//  }
//
//  void _handleRadioValueChange2(int value) {
//    setState(() {
//      _radioValue2 = value;
//
//      switch(_radioValue2) {
//        case 0:
//          correctScore++;
//          break;
//        case 1:
//          break;
//        case 2:
//          break;
//      }
//    });
//  }
//
//  void _handleRadioValueChange3(int value) {
//    setState(() {
//      _radioValue3 = value;
//
//      switch(_radioValue3) {
//        case 0:
//          correctScore++;
//          break;
//        case 1:
//          break;
//        case 2:
//          break;
//      }
//    });
//  }
//
//  void _handleRadioValueChange4(int value) {
//    setState(() {
//      _radioValue4 = value;
//
//      switch(_radioValue4) {
//        case 0:
//          correctScore++;
//          break;
//        case 1:
//          break;
//        case 2:
//          break;
//      }
//    });
//  }
//
//  void _handleRadioValueChange5(int value) {
//    setState(() {
//      _radioValue5 = value;
//
//      switch(_radioValue5) {
//        case 0:
//          correctScore++;
//          break;
//        case 1:
//          break;
//        case 2:
//          break;
//      }
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Latihan'),
//      ),
//      body: Container(
//        padding: EdgeInsets.all(8.0),
//        child: SingleChildScrollView(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text(
//                'Pilih jawaban yang menurut anda benar',
//                style: TextStyle(
//                  fontSize: 20.0,
//                  fontWeight: FontWeight.bold,
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//              ),
//              Divider(
//                height: 5.0,
//                color: Colors.black,
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//              ),
//              Text(
//                //'Soal 1 : ',
//                '1. Sintaks java untuk melakukan kompilasi terhadap berkas program adalah :',
//                style: TextStyle(
//                  fontSize: 18.0,
//                  fontWeight: FontWeight.bold,
//                ),
//              ),
//              SingleChildScrollView(
//                scrollDirection: Axis.horizontal,
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Radio(
//                      value: 0,
//                      groupValue: _radioValue1,
//                      onChanged: _handleRadioValueChange1,
//                    ),
//                    Text(
//                      'javac',
//                      style: TextStyle(
//                        fontSize: 16.0,
//                      ),
//                    ),
//                    Radio(
//                      value: 1,
//                      groupValue: _radioValue1,
//                      onChanged: _handleRadioValueChange1,
//                    ),
//                    Text(
//                      'java',
//                      style: TextStyle(
//                        fontSize: 16.0,
//                      ),
//                    ),
//                    Radio(
//                      value: 2,
//                      groupValue: _radioValue1,
//                      onChanged: _handleRadioValueChange1,
//                    ),
//                    Text(
//                      'javaclass',
//                      style: TextStyle(
//                        fontSize: 16.0,
//                      ),
//                    ),
//                    Radio(
//                      value: 3,
//                      groupValue: _radioValue1,
//                      onChanged: _handleRadioValueChange1,
//                    ),
//                    Text(
//                      'javax',
//                      style: TextStyle(
//                        fontSize: 16.0,
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Divider(
//                height: 5.0,
//                color: Colors.black,
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//              ),
//              Column(
//                children: <Widget>[
//                  Text(
//                    '2. Diantara perintah untuk mencetak berikut, yang benar adalah',
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
//                          groupValue: _radioValue2,
//                          onChanged: _handleRadioValueChange2,
//                        ),
//                        Text(
//                          'System.out.println(“Mid Java”)',
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 1,
//                          groupValue: _radioValue2,
//                          onChanged: _handleRadioValueChange2,
//                        ),
//                        Text(
//                          'System.Out.println(“Mid Java”)',
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 2,
//                          groupValue: _radioValue2,
//                          onChanged: _handleRadioValueChange2,
//                        ),
//                        Text(
//                          'System.out.Println(“Mid Java”)',
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 3,
//                          groupValue: _radioValue2,
//                          onChanged: _handleRadioValueChange2,
//                        ),
//                        Text(
//                          'System.Out.Println(“Mid Java”)',
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
//                ],
//              ),
//              Column(
//                children: <Widget>[
//                  Text(
//                    '3. Stream yang berguna untuk mengirim keluaran ke layar adalah',
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
//                          groupValue: _radioValue3,
//                          onChanged: _handleRadioValueChange3,
//                        ),
//                        Text(
//                          'System.out.',
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 1,
//                          groupValue: _radioValue3,
//                          onChanged: _handleRadioValueChange3,
//                        ),
//                        Text(
//                          'System.in.',
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 2,
//                          groupValue: _radioValue3,
//                          onChanged: _handleRadioValueChange3,
//                        ),
//                        Text(
//                          'System.err',
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 3,
//                          groupValue: _radioValue3,
//                          onChanged: _handleRadioValueChange3,
//                        ),
//                        Text(
//                          'System.exit',
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
//                ],
//              ),
//              Column(
//                children: <Widget>[
//                  Text(
//                    '4. Hasil kompilasi dari berkas java adalah',
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
//                          groupValue: _radioValue4,
//                          onChanged: _handleRadioValueChange4,
//                        ),
//                        Text(
//                          'File Bytecode',
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 1,
//                          groupValue: _radioValue4,
//                          onChanged: _handleRadioValueChange4,
//                        ),
//                        Text(
//                          'File BAK',
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 2,
//                          groupValue: _radioValue4,
//                          onChanged: _handleRadioValueChange4,
//                        ),
//                        Text(
//                          'File executable',
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 3,
//                          groupValue: _radioValue4,
//                          onChanged: _handleRadioValueChange4,
//                        ),
//                        Text(
//                          'File class',
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
//                ],
//              ),
//              Column(
//                children: <Widget>[
//                  Text(
//                    '5. Fungsi method System.in dalam java adalah',
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
//                          groupValue: _radioValue5,
//                          onChanged: _handleRadioValueChange5,
//                        ),
//                        Text(
//                          'Menangani pembacaan dari keyboard',
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 1,
//                          groupValue: _radioValue5,
//                          onChanged: _handleRadioValueChange5,
//                        ),
//                        Text(
//                          'Mengirimkan keluaran ke layar',
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 2,
//                          groupValue: _radioValue5,
//                          onChanged: _handleRadioValueChange5,
//                        ),
//                        Text(
//                          'Menampilkan pesan kesalahan',
//                          style: TextStyle(
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        Radio(
//                          value: 3,
//                          groupValue: _radioValue5,
//                          onChanged: _handleRadioValueChange5,
//                        ),
//                        Text(
//                          'Menangani suatu objek',
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
//                ],
//              ),
//              RaisedButton(
//                onPressed: () {
//                  validateJawaban();
//                },
//                color: Colors.blue,
//                child: Text(
//                  'Validasi jawaban',
//                  style: TextStyle(
//                    color: Colors.white,
//                  ),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(4.0),
//              ),
//              RaisedButton(
//                onPressed: () {
//                  resetSelection();
//                },
//                color: Colors.blue,
//                child: Text(
//                  'Reset jawaban',
//                  style: TextStyle(
//                    color: Colors.white,
//                  ),
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
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
import 'package:joinan_final_skripsi/models/latihan.dart';
import 'package:http/http.dart' as http;
import 'package:joinan_final_skripsi/screens/pelajaran/availableCourseDetailEnrolled.dart';

class LatihanPage extends StatefulWidget {

  AvailableCourse availableCourse;
  final String username;

  LatihanPage({this.availableCourse,this.username});

  @override
  _LatihanPageState createState() => _LatihanPageState();
}

class _LatihanPageState extends State<LatihanPage> {

  int nilai = 0;
  List<Latihan> _latihan = List<Latihan>();

  Future<List<Latihan>> getLatihan() async {
    var url = 'http://$myIP/joinan/getLatihan.php';
    var response = await http.get(url);

    var latihans = List<Latihan>();

    if (response.statusCode == 200) {
      var latihansJson = json.decode(response.body);
      for (var latihanJson in latihansJson) {
        if(latihanJson['courseID'] == widget.availableCourse.courseID) {
          latihans.add(Latihan.fromJson(latihanJson));
        }
      }
    }
    return latihans;
  }

  //cara 2
//  Future<dynamic> getLatihan2() async {
//    final response = await http.get('http://192.168.64.2/my_store/get_latihan.php');
//    var data = json.decode(response.body);
//    return data;
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
    getLatihan().then((value) {
      setState(() {
        _latihan.addAll(value);
      });
    });
    super.initState();
  }

  int correctScore = 0;
  int correctSelected = 0;
  int notComplete = 0;

  List _radioValue = List.filled(5, -1);
  List _correctCheck = List.filled(5, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan'),
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
              itemCount: _latihan.length,
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
                          '${index+1}. ${_latihan[index].soal}',
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
                                    if(_radioValue[index] == _latihan[index].kunci && correctSelected == 0){
                                      _correctCheck[index] = 1;
                                      //correctScore++;
                                      //correctSelected = 1;
                                      print(_latihan[index].id_soal);
                                      print(_latihan[index].courseID);
                                      print(_latihan[index].soal);
                                      print(_latihan[index].a);
                                      print(_latihan[index].b);
                                      print(_latihan[index].c);
                                      print(_latihan[index].d);
                                      print(_latihan[index].kunci);
                                      print(correctScore);
                                      //print(correctSelected);
                                    }else if(_radioValue[index] != _latihan[index].kunci){
                                      //correctScore = 0;
                                      print(correctScore);
                                    }
                                  });
                                },
                              ),
                              Text(
                                //'javac',
                                _latihan[index].a,
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
                                    if(_radioValue[index] == _latihan[index].kunci && correctSelected == 0){
                                      _correctCheck[index] = 1;
                                      //correctScore++;
                                      //correctSelected = 1;
                                      print(_latihan[index].id_soal);
                                      print(_latihan[index].courseID);
                                      print(_latihan[index].soal);
                                      print(_latihan[index].a);
                                      print(_latihan[index].b);
                                      print(_latihan[index].c);
                                      print(_latihan[index].d);
                                      print(_latihan[index].kunci);
                                      print(correctScore);
                                      //print(correctSelected);
                                    }else if(_radioValue[index] != _latihan[index].kunci){
                                      //correctScore = 0;
                                      print(correctScore);
                                    }
                                  });
                                },
                              ),
                              Text(
                                //'java',
                                _latihan[index].b,
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
                                    if(_radioValue[index] == _latihan[index].kunci && correctSelected == 0){
                                      _correctCheck[index] = 1;
                                      //correctScore++;
                                      //correctSelected = 1;
                                      print(_latihan[index].id_soal);
                                      print(_latihan[index].courseID);
                                      print(_latihan[index].soal);
                                      print(_latihan[index].a);
                                      print(_latihan[index].b);
                                      print(_latihan[index].c);
                                      print(_latihan[index].d);
                                      print(_latihan[index].kunci);
                                      print(correctScore);
                                      //print(correctSelected);
                                    }else if(_radioValue[index] != _latihan[index].kunci){
                                      //correctScore = 0;
                                      print(correctScore);
                                    }
                                  });
                                },
                              ),
                              Text(
                                //'javaclass',
                                _latihan[index].c,
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
                                    if(_radioValue[index] == _latihan[index].kunci && correctSelected == 0){
                                      _correctCheck[index] = 1;
                                      //correctScore++;
                                      //correctSelected = 1;
                                      print(_latihan[index].id_soal);
                                      print(_latihan[index].courseID);
                                      print(_latihan[index].soal);
                                      print(_latihan[index].a);
                                      print(_latihan[index].b);
                                      print(_latihan[index].c);
                                      print(_latihan[index].d);
                                      print(_latihan[index].kunci);
                                      print(correctScore);
                                      //print(correctSelected);
                                    }else if(_radioValue[index] != _latihan[index].kunci){
                                      //correctScore = 0;
                                      print(correctScore);
                                    }
                                  });
                                },
                              ),
                              Text(
                                //'javax',
                                _latihan[index].d,
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
              for(int i = 0; i < 5; i++)
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

//              for(int i = 0; i < 5; i++)
//              {
//                if(_correctCheck[i] == 1){
//                  correctScore++;
//                  if(correctScore > 5) {
//                    correctScore = 5;
//                  }
//                }
//              }

              for(int i = 0; i < 5; i++)
              {
                if(_radioValue[i] == _latihan[i].kunci) {
                  correctScore++;
                  nilai += 20;
                }
              }

              if(notComplete == 0) {
                validateJawaban();
              }
              //validateJawaban();
              //resetSelection();
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
      for(int i = 0; i < 5; i++)
        {
          _radioValue[i] = -1;
          _correctCheck[i] = 0;
        }
      nilai = 0;
      correctScore = 0;
    });
  }

  Future<void> validateJawaban() async {
    if (_radioValue[0] == -1 && _radioValue[1] == -1 && _radioValue[2] == -1 &&
        _radioValue[3] == -1 && _radioValue[4] == -1) {
      return showDialog(
        context: context,
        builder: (_) =>
            AlertDialog(
              title: Text('Tolong pilih jawaban!'),
              content: Text(
                  'Anda belum memilih jawaban pada soal yang disediakan'),
            ),
        barrierDismissible: true,
      );
    } else {
      return showDialog(
        context: context,
        builder: (_) =>
            AlertDialog(
              title: Text('Hasil jawaban anda : '),
              content: Text(
                  'Anda berhasil menjawab $correctScore dengan benar dari 5 soal, nilai anda $nilai'),
            ),
        barrierDismissible: true,
      );
    }
  }
}
