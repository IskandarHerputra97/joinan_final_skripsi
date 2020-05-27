import 'package:flutter/material.dart';
import 'package:joinan_final_skripsi/screens/profilSaya/daftarPertemuan.dart';
import 'package:joinan_final_skripsi/screens/profilSaya/eCertificate.dart';
import 'package:joinan_final_skripsi/services/loginUser.dart';
import 'package:joinan_final_skripsi/testLogin.dart';

class HomeProfilSaya extends StatelessWidget {

  HomeProfilSaya({this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Joinan'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            //'anggrek@gmail.com',
            username,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => ECertificate()));
                },
                color: Colors.blue,
                child: Text(
                  'E-certificate',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => DaftarPertemuan()));
                },
                color: Colors.blue,
                child: Text(
                  'Daftar pertemuan',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  //Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => SignIn()));
                  Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => TestLogin()));
                },
                color: Colors.red,
                child: Text(
                  'Sign out',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
