//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//import 'package:joinan_final_skripsi/customNavBar.dart';
//import 'dart:async';
//
//import 'package:joinan_final_skripsi/main.dart';
//
//class TestLogin extends StatefulWidget {
//  @override
//  _TestLoginState createState() => _TestLoginState();
//}
//
//class _TestLoginState extends State<TestLogin> {
//
//  TextEditingController user = TextEditingController();
//  TextEditingController password = TextEditingController();
//
//  String msg = '';
//
//  Future<List> _login() async {
//    final response = await http.post("http://192.168.64.2/my_store/login.php", body: {
//      "username": user.text,
//      "password": password.text,
//    });
//
//    print(response.body);
//
//    var dataUser = json.decode(response.body);
//
//    if(dataUser.length==0){
//      setState(() {
//        msg = "Login gagal";
//      });
//    }else{
//      //Navigator.pushReplacementNamed(context, '/StudentPage');
//      //Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => CustomNavBar()));
//      Navigator.pushReplacementNamed(context, '/CustomNavBar');
//    }
//    setState(() {
//      username = dataUser[0]['username'];
//    });
//
//    return dataUser;
//
////    if(dataUser.length==0){
////      setState(() {
////        msg = "Login gagal";
////      });
////    }else{
////      if(dataUser[0]['level']=='student'){
////        //print('selamat datang student');
////        Navigator.pushReplacementNamed(context, '/StudentPage');
////      }else if(dataUser[0]['level']=='teacher'){
////        //print('selamat datang teacher');
////        Navigator.pushReplacementNamed(context, '/TeacherPage');
////      }
////
////      setState(() {
////        username = dataUser[0]['username'];
////      });
////    }
////    return dataUser;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Login'),
//        actions: <Widget>[
//          FlatButton.icon(
//            onPressed: () {
//              //widget.toggleView();
//              Navigator.pushReplacementNamed(context, '/TestRegister');
//            },
//            icon: Icon(Icons.person),
//            label: Text('Register'),
//          )
//        ],
//      ),
//      body: Container(
//        child: Center(
//          child: Column(
//            children: <Widget>[
//              Text(
//                'Username',
//                style: TextStyle(
//                  fontSize: 18.0,
//                ),
//              ),
//              TextField(
//                controller: user,
//                decoration: InputDecoration(
//                  hintText: 'Username',
//                ),
//              ),
//              Text(
//                'Password',
//                style: TextStyle(
//                  fontSize: 18.0,
//                ),
//              ),
//              TextField(
//                controller: password,
//                obscureText: true,
//                decoration: InputDecoration(
//                  hintText: 'Password',
//                ),
//              ),
//              RaisedButton(
//                onPressed: () {
//                  _login();
//                },
//                child: Text(
//                  'Login',
//                ),
//              ),
//              Text(
//                msg,
//                style: TextStyle(
//                  color: Colors.red,
//                  fontSize: 28.0,
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:joinan_final_skripsi/main.dart';

class TestLogin extends StatefulWidget {

  @override
  _TestLoginState createState() => _TestLoginState();
}

class _TestLoginState extends State<TestLogin> {


  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  String msg = '';

  Future<List> _login() async {
    final response = await http.post("http://$myIP/joinan/login.php", body: {
      "email": email.text,
      "password": password.text,
    });

    print(response.body);

    var dataUser = json.decode(response.body);

    if(dataUser.length==0){
      setState(() {
        msg = "Login gagal";
      });
    }else{
      Navigator.pushReplacementNamed(context, '/CustomNavBar');
    }
    setState(() {
      namaUser = dataUser[0]['nama'];
      idUser = dataUser[0]['id'];
      emailUser = dataUser[0]['email'];
      //nama = dataUser[0]['nama'];
    });

    return dataUser;
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/TestRegister');
            },
            icon: Icon(Icons.person),
            label: Text('Register'),
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Input email di sini'
                  ),
                  validator: (value) {
                    if(value.isEmpty) {
                      return 'Email tidak sesuai';
                    } else {
                      return null;
                    }
                  },
                  controller: email,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Input password di sini',
                  ),
                  validator: (value) {
                    if(value.isEmpty) {
                      return 'Password tidak sesuai';
                    }
                    return null;
                  },
                  controller: password,
                ),
                RaisedButton(
                  onPressed: () {
                    if(_formKey.currentState.validate()) {
                      _login();
                    }
                  },
                  color: Colors.blue,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  msg,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 28.0,
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
