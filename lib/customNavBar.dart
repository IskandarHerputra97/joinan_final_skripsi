import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:joinan_final_skripsi/main.dart';
import 'package:joinan_final_skripsi/models/user.dart';
import 'package:joinan_final_skripsi/screens/kelasSaya/homeKelasSaya.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/homePelajaran.dart';
import 'package:joinan_final_skripsi/screens/profilSaya/homeProfilSaya.dart';
import 'package:http/http.dart' as http;

class CustomNavBar extends StatefulWidget {

  //CustomNavBar({this.emailUser});
  //final String emailUser;

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {

  int _currentIndex = 0;
  final tabs = [
    HomePelajaran(username: namaUser, userID: idUser),
    HomeKelasSaya(),
    HomeProfilSaya(username: namaUser),
  ];

  List<User> _user = List<User>();

  Future<List<User>> fetchUser() async {
    var url = 'http://$myIP/joinan/getUser.php';
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
    fetchUser().then((value) {
      setState(() {
        _user.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Pelajaran'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.class_),
            title: Text('Kelas Saya'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text('Profil Saya'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
