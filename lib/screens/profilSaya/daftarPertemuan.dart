import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:joinan_final_skripsi/main.dart';
import 'package:joinan_final_skripsi/models/pertemuanAccepted.dart';
import 'package:http/http.dart' as http;

class DaftarPertemuan extends StatefulWidget {
  @override
  _DaftarPertemuanState createState() => _DaftarPertemuanState();
}

class _DaftarPertemuanState extends State<DaftarPertemuan> {

  List<PertemuanAccepted> _pertemuanAccepted = List<PertemuanAccepted>();

  Future<List<PertemuanAccepted>> fetchPertemuanAccepted() async {
    var url = 'http://$myIP/joinan/get_pertemuan_accepted_student.php';
    var response = await http.get(url);

    var pertemuanAccepteds = List<PertemuanAccepted>();

    if (response.statusCode == 200) {
      var pertemuanAcceptedsJson = json.decode(response.body);
      for (var pertemuanAcceptedJson in pertemuanAcceptedsJson) {
        if(pertemuanAcceptedJson['namaStudent'] == namaUser) {
          pertemuanAccepteds.add(
              PertemuanAccepted.fromJson(pertemuanAcceptedJson));
        }
      }
    }
    return pertemuanAccepteds;
  }

  @override
  void initState() {
    fetchPertemuanAccepted().then((value) {
      setState(() {
        _pertemuanAccepted.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pertemuan saya'),
      ),
      body: ListView.builder(
        itemCount: _pertemuanAccepted.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
              child: ListTile(
                title: Text('${index+1} - Pertemuan dengan ${_pertemuanAccepted[index].namaTeacher}'),
                onTap: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            DaftarPertemuanDetail(pertemuanAccepted: _pertemuanAccepted[index],)));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class DaftarPertemuanDetail extends StatefulWidget {

  PertemuanAccepted pertemuanAccepted;
  DaftarPertemuanDetail({this.pertemuanAccepted});

  @override
  _DaftarPertemuanDetailState createState() => _DaftarPertemuanDetailState();
}

class _DaftarPertemuanDetailState extends State<DaftarPertemuanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text("${widget.listKelas.courseName}"),
        title: Text('Daftar pertemuan detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(widget.pertemuanAccepted.emailTeacher),
              Text(widget.pertemuanAccepted.namaCourse),
              Text(widget.pertemuanAccepted.tanggal),
              Text(widget.pertemuanAccepted.jam),
              Text(widget.pertemuanAccepted.lokasi),
            ],
          ),
        ),
      ),
    );
  }
}
