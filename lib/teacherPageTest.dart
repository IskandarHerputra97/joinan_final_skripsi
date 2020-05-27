import 'package:flutter/material.dart';

class TeacherPageTest extends StatelessWidget {

  TeacherPageTest({this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat datang di halaman teacher'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Halo $username',
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/TestLogin');
            },
            child: Text(
              'Sign out',
            ),
          ),
        ],
      ),
    );
  }
}
