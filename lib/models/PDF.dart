class PDF {
  var pdfID;
  var courseID;
  String courseName;
  String urlPDF;

  PDF(
      {this.pdfID,this.courseID,this.courseName,this.urlPDF});

  PDF.fromJson(Map<String, dynamic> json) {
    pdfID = json['pdfID'];
    courseID = json['courseID'];
    courseName = json['courseName'];
    urlPDF = json['urlPDF'];
  }
}