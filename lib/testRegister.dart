import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:joinan_final_skripsi/main.dart';
import 'dart:async';

import 'package:joinan_final_skripsi/models/user.dart';

class TestRegister extends StatefulWidget {
  @override
  _TestRegisterState createState() => _TestRegisterState();
}

class _TestRegisterState extends State<TestRegister> {

  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  int valid = 1;
  String msg = '';
  //String msg = 'Register berhasil!';

  Future<List> _register() async {
    var url = "http://$myIP/joinan/adddata.php";

    http.post(url, body: {
      "nama": nama.text,
      "email": email.text,
      "password": password.text,
    });

//    final response = await http.post("http://192.168.64.2/my_store/login.php", body: {
//      "username": user.text,
//      "password": password.text,
//    });
//
//    //print(response.body);
//
//    var dataUser = json.decode(response.body);
//
//    if(dataUser.length==0){
//      setState(() {
//        msg = "Login gagal";
//      });
//    }else{
//      if(dataUser[0]['level']=='student'){
//        //print('selamat datang student');
//        Navigator.pushReplacementNamed(context, '/StudentPage');
//      }else if(dataUser[0]['level']=='teacher'){
//        //print('selamat datang teacher');
//        Navigator.pushReplacementNamed(context, '/TeacherPage');
//      }
//
//      setState(() {
//        username = dataUser[0]['username'];
//      });
//    }
//    return dataUser;
  }

  final _formKey = GlobalKey<FormState>();

  List<User> _users = List<User>();

  Future<List<User>> fetchUsers() async {
    var url = 'http://$myIP/joinan/get_users.php';
    var response = await http.get(url);

    var users = List<User>();

    if (response.statusCode == 200) {
      var usersJson = json.decode(response.body);
      for (var userJson in usersJson) {
          users.add(User.fromJson(userJson));
      }
    }
    return users;
  }

  @override
  void initState() {
    fetchUsers().then((value) {
      setState(() {
        _users.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/TestLogin');
            },
            icon: Icon(Icons.person),
            label: Text('Login'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Text(
                    'Nama',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Input nama di sini',
                    ),
                    validator: (value) {
                      if(value.isEmpty) {
                        return 'Username tidak boleh kosong!';
                      }
                      return null;
                    },
                    controller: nama,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Input email di sini',
                    ),
                    validator: (value) {
                      if(value.isEmpty) {
                        return 'Email tidak boleh kosong!';
                      }
                      for(int i = 0; i < _users.length; i++)
                      {
                        if(email.text == _users[i].email){
                        //if(email.text == 'testbinus@gmail.com'){
                          setState(() {
                            msg = 'Email sudah terdaftar';
                            valid = 0;
                          });
                          return null;
                        }else{
                          setState(() {
                            msg = '';
                            valid = 1;
                          });
                        }
                      }
                      return null;
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
                        return 'Password tidak boleh kosong';
                      }
                      return null;
                    },
                    controller: password,
                  ),
                  RaisedButton(
                    onPressed: () {
//                    for(int i = 0; i < _users.length; i++)
//                    {
//                      //if(email.text == _users[i].email){
//                      if(email.text == 'john@gmail.com'){
//                        setState(() {
//                          msg = 'Email sudah terdaftar';
//                          valid = 0;
//                        });
//                        break;
//                      }
//                    }
                      if(_formKey.currentState.validate() && valid == 1) {
                        _register();
                        Navigator.pushReplacementNamed(context, '/TestLogin');
                      }
                    },
                    color: Colors.blue,
                    child: Text(
                      'Register',
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
      ),
    );
  }
}
