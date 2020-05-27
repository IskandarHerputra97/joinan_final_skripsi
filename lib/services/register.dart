import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:joinan_final_skripsi/customNavBar.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/homePelajaran.dart';
import 'dart:async';
import 'dart:convert';
import 'package:joinan_final_skripsi/services/loginUser.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  //final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  String email = '';
  String password = '';
  String error = '';

  //baru
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future userRegistration() async{

    // Showing CircularProgressIndicator.
    setState(() {
      loading = true ;
    });

    // Getting value from Controller
    //String email = emailController.text;
    //String password = passwordController.text;

    // SERVER API URL
    var url = 'https://flutter-examples.000webhostapp.com/register_user.php';

    // Store all data with Param Name.
    var data = {'email': email, 'password' : password};

    // Starting Web API Call.
    var response = await http.post(url, body: json.encode(data));

    // Getting Server response into variable.
    //var message = jsonDecode(response.body);

    // If Web call Success than Hide the CircularProgressIndicator.
    if(response.statusCode == 200){
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
        centerTitle: true,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {
              //widget.toggleView();
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => SignIn()));
            },
            icon: Icon(Icons.person),
            label: Text('Sign in'),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text(
                'JOINAN MOBILE LEARNING',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() {
                    email = val;
                  });
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                validator: (val) => val.length < 6 ? 'Password minimal 6 karakter' : null,
                onChanged: (val) {
                  setState(() {
                    password = val;
                  });
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                // onPressed: () async {
                //   if(_formKey.currentState.validate()) {
                //     setState(() {
                //       loading = true;
                //     });
                //     //dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                //     dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                //     if(result == null) {
                //       setState(() {
                //         error = 'Tolong input email yang valid';
                //         loading = false;
                //       });
                //     }
                //   }
                // },

                //baru
                //onPressed: userRegistration,
                onPressed: () {
                  Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => CustomNavBar()));
                },
                color: Colors.blue,
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
