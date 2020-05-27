import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:joinan_final_skripsi/main.dart';
import 'package:joinan_final_skripsi/models/availableCourse.dart';
import 'package:http/http.dart' as http;
import 'package:joinan_final_skripsi/models/certificate.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/availableCourseDetail.dart';

class ECertificate extends StatefulWidget {

  @override
  _ECertificateState createState() => _ECertificateState();
}

class _ECertificateState extends State<ECertificate> {

  List<Certificate> _certificates = List<Certificate>();

  Future<List<Certificate>> fetchCertificates() async {
    //var url = 'https://api.myjson.com/bins/rd8y2';
    //var url = 'https://api.myjson.com/bins/y7mme';
    var url = 'http://$myIP/joinan/get_certificate.php';
    var response = await http.get(url);

    var certificates = List<Certificate>();

    if (response.statusCode == 200) {
      var certificatesJson = json.decode(response.body);
      for (var certificateJson in certificatesJson) {
        if(certificateJson['userEmail'] == emailUser) {
          certificates.add(Certificate.fromJson(certificateJson));
        }
      }
    }
    return certificates;
  }

  @override
  void initState() {
    fetchCertificates().then((value) {
      setState(() {
        _certificates.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('E-Certificate Saya'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                child: ListTile(
                  title: Text(_certificates[index].courseName),
                  subtitle: Text(_certificates[index].certificateContent),
                  onTap: () {
                    //Navigator.push(context, new MaterialPageRoute(builder: (context) => AvailableCourseDetail(availableCourse: _availableCourses[index])));
                  },
                ),
              ),
            );
          },
          itemCount: _certificates.length,
        )
    );
  }
}