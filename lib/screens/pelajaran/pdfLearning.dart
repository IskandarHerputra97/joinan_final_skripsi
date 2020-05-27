import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:joinan_final_skripsi/main.dart';
import 'package:joinan_final_skripsi/models/PDF.dart';
import 'package:joinan_final_skripsi/models/availableCourse.dart';
import 'package:http/http.dart' as http;

class PDFLearning extends StatefulWidget {

  AvailableCourse availableCourse;
  PDFLearning({this.availableCourse});

  @override
  _PDFLearningState createState() => _PDFLearningState();
}

class _PDFLearningState extends State<PDFLearning> {


  List<PDF> _pdfLearning = List<PDF>();

  Future<List<PDF>> getPDF() async {
    var url = 'http://$myIP/joinan/get_pdf_learning.php';
    var response = await http.get(url);

    var pdfs = List<PDF>();

    if(response.statusCode == 200) {
      var pdfsJson = json.decode(response.body);
      for(var pdfJson in pdfsJson) {
        if(pdfJson['courseID'] == widget.availableCourse.courseID) {
          pdfs.add(PDF.fromJson(pdfJson));
        }
      }
    }
    return pdfs;
  }

  @override
  void initState() {
    getPDF().then((value) {
      setState(() {
        _pdfLearning.addAll(value);
      });
    });
    super.initState();
  }


  bool _isLoading = false;
  bool _isInit = true;
  PDFDocument document;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Learning'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: _isInit
                  ? Text('Klik button untuk load PDF file')
                  : _isLoading
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : PDFViewer(document: document),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    loadFromURL();
                  },
                  child: Text(
                    'URL',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  loadFromURL() async {
    setState(() {
      _isInit = false;
      _isLoading = true;
    });
    //document = await PDFDocument.fromURL("http://www.africau.edu/images/default/sample.pdf");
    document = await PDFDocument.fromURL(_pdfLearning[0].urlPDF);
    setState(() {
      _isLoading = false;
    });
  }
}
