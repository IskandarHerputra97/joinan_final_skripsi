//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'dart:async';
//import 'package:http/http.dart' as http;
//import 'package:joinan_final_skripsi/detail.dart';
//
//class Test extends StatefulWidget {
//  @override
//  _TestState createState() => _TestState();
//}
//
//class _TestState extends State<Test> {
//
//  Future<List<dynamic>> getData() async {
//    //final response = await http.get("http://10.0.2.2/flutter_joinan/getdata.php");
//    //final response = await http.get("http://192.168.43.254/test/api/user/list.php");
//    //final response = await http.get("http://10.0.2.2/my_store/getdata.php");
//    final response = await http.get("http://192.168.64.2/my_store/getdata.php");
//    return json.decode(response.body);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('test'),
//      ),
//
//      body: FutureBuilder<List>(
//        future: getData(),
//        builder: (context, snapshot){
//          if(snapshot.hasError) {
//            print(snapshot.error);
//          } else if(snapshot.hasData) {
//            return ItemList(list: snapshot.data);
//          }
//          //return CircularProgressIndicator();
//          return Text('loading');
//        },
//      ),
//    );
//  }
//}
//
//class ItemList extends StatelessWidget {
//
//  final List list;
//  ItemList({this.list});
//
//  @override
//  Widget build(BuildContext context) {
//    return ListView.builder(
//      itemCount: list==null ? 0 : list.length,
//      itemBuilder: (context, i) {
//        //return Text(list[i]['item_name']);
//        return Container(
//          padding: EdgeInsets.all(10.0),
//          child: GestureDetector(
//            onTap: ()=>Navigator.of(context).push(
//              MaterialPageRoute(
//                builder: (BuildContext context)=> Detail(list: list, index: i)
//              )
//            ),
//            child: Card(
//              child: ListTile(
//                title: Text(list[i]['item_name']),
//                leading: Icon(Icons.widgets),
//                subtitle: Text("Stock : ${list[i]['stock']}"),
//              ),
//            ),
//          ),
//        );
//      },
//    );
//  }
//}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:joinan_final_skripsi/detail.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

  Future<List<dynamic>> getData() async {
    //final response = await http.get("http://10.0.2.2/flutter_joinan/getdata.php");
    //final response = await http.get("http://192.168.43.254/test/api/user/list.php");
    //final response = await http.get("http://10.0.2.2/my_store/getdata.php");
    final response = await http.get("http://192.168.64.2/my_store/getForum.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),

      body: FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot){
          if(snapshot.hasError) {
            print(snapshot.error);
          } else if(snapshot.hasData) {
            return ItemList(list: snapshot.data);
          }
          //return CircularProgressIndicator();
          return Text('loading');
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {

  final List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list==null ? 0 : list.length,
      itemBuilder: (context, i) {
        //return Text(list[i]['item_name']);
        return Container(
          padding: EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: ()=>Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (BuildContext context)=> Detail(list: list, index: i)
                )
            ),
            child: Card(
              child: ListTile(
                title: Text("${list[i]['namaVideo']} - ${list[i]['timePosted']}"),
                leading: Icon(Icons.widgets),
                subtitle: Text("${list[i]['postContent']}"),
              ),
            ),
          ),
        );
      },
    );
  }
}
