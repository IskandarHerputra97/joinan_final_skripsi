//import 'package:flutter/material.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Joinan Learning'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          // Column is also a layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug painting" (press "p" in the console, choose the
//          // "Toggle Debug Paint" action from the Flutter Inspector in Android
//          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//          // to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joinan_final_skripsi/customNavBar.dart';
import 'package:joinan_final_skripsi/screens/kelasSaya/homeKelasSaya.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/availableCourseDetailEnrolled.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/homePelajaran.dart';
import 'package:joinan_final_skripsi/screens/profilSaya/homeProfilSaya.dart';
import 'package:joinan_final_skripsi/services/loginUser.dart';
import 'package:joinan_final_skripsi/services/register.dart';
import 'package:joinan_final_skripsi/studentPageTest.dart';
import 'package:joinan_final_skripsi/teacherPageTest.dart';
import 'package:joinan_final_skripsi/testLogin.dart';
import 'package:joinan_final_skripsi/testRegister.dart';
import 'package:joinan_final_skripsi/testing/postCertificate.dart';

void main() => runApp(MyApp());

//Future main() async {
//  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//  runApp(MyApp());
//}

String idUser = '';
String namaUser = '';
String emailUser = '';
//IP Laptop
//String myIP = '192.168.64.2';
//String myIP = '192.168.0.104';
//IP hp
//String myIP = '192.168.0.102';
//test
//String myIP = '192.168.0.105';
//String myIP = '0.0.0.0';
//http://192.168.64.2/my_store/get_users.php
//http://192.168.0.102/my_store/get_users.php
//IP Binus access
//String myIP = '10.20.151.5';
//String myIP = '10.20.157.38';
//hotspot hp
//String myIP = '192.168.43.220';
//String myIP = '192.168.0.103';
String myIP = '192.168.0.100';
//IP adit
//String myIP = '10.20.152.22';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestLogin(),
      //home: PostCertificate(),
      routes: <String,WidgetBuilder>{
        //'/TeacherPage': (BuildContext context)=> TeacherPageTest(username: username),
        //'/StudentPage': (BuildContext context)=> StudentPageTest(username: username),
        '/TestLogin': (BuildContext context)=> TestLogin(),
        '/TestRegister': (BuildContext context)=> TestRegister(),
        '/CustomNavBar': (BuildContext context)=> CustomNavBar(),
        '/HomePelajaran': (BuildContext context)=> HomePelajaran(),
        'CourseDetailEnrolled': (BuildContext context)=> AvailableCourseDetailEnrolled(),
        '/HomeKelasSaya': (BuildContext context)=> HomeKelasSaya(),
        'Profil': (BuildContext context)=> HomeProfilSaya()
      },
    );
  }
}