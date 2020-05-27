//class Latihan {
//  //int courseID;
//  var latihanID;
//  var courseID;
//  String soal1;
//  String pilihan1a;
//  String pilihan1b;
//  String pilihan1c;
//  String pilihan1d;
//  String soal2;
//  String pilihan2a;
//  String pilihan2b;
//  String pilihan2c;
//  String pilihan2d;
//  String soal3;
//  String pilihan3a;
//  String pilihan3b;
//  String pilihan3c;
//  String pilihan3d;
//  String soal4;
//  String pilihan4a;
//  String pilihan4b;
//  String pilihan4c;
//  String pilihan4d;
//  String soal5;
//  String pilihan5a;
//  String pilihan5b;
//  String pilihan5c;
//  String pilihan5d;
//
//  Latihan(
//      {this.latihanID,this.courseID,this.soal1,this.pilihan1a,this.pilihan1b,this.pilihan1c,this.pilihan1d,this.soal2,this.pilihan2a,this.pilihan2b,this.pilihan2c,this.pilihan2d,this.soal3,this.pilihan3a,this.pilihan3b,this.pilihan3c,this.pilihan3d,this.soal4,this.pilihan4a,this.pilihan4b,this.pilihan4c,this.pilihan4d,this.soal5,this.pilihan5a,this.pilihan5b,this.pilihan5c,this.pilihan5d});
//
//  Latihan.fromJson(Map<dynamic, dynamic> json) {
//    latihanID = json['latihanID'];
//    courseID = json['courseID'];
//    soal1 = json['soal1'];
//    pilihan1a = json['pilihan1a'];
//    pilihan1b = json['pilihan1b'];
//    pilihan1c = json['pilihan1c'];
//    pilihan1d = json['pilihan1d'];
//    soal2 = json['soal2'];
//    pilihan2a = json['pilihan2a'];
//    pilihan2b = json['pilihan2b'];
//    pilihan2c = json['pilihan2c'];
//    pilihan2d = json['pilihan2d'];
//    soal3 = json['soal3'];
//    pilihan3a = json['pilihan3a'];
//    pilihan3b = json['pilihan3b'];
//    pilihan3c = json['pilihan3c'];
//    pilihan3d = json['pilihan3d'];
//    soal4 = json['soal4'];
//    pilihan4a = json['pilihan4a'];
//    pilihan4b = json['pilihan4b'];
//    pilihan4c = json['pilihan4c'];
//    pilihan4d = json['pilihan4d'];
//    soal5 = json['soal5'];
//    pilihan5a = json['pilihan5a'];
//    pilihan5b = json['pilihan5b'];
//    pilihan5c = json['pilihan5c'];
//    pilihan5d = json['pilihan5d'];
//  }
//}

class Latihan {
  //int courseID;
  var id_soal;
  var courseID;
  String soal;
  String a;
  String b;
  String c;
  String d;
  String kunci;

  Latihan(
      {this.id_soal,this.courseID,this.soal,this.a,this.b,this.c,this.d,this.kunci});

  Latihan.fromJson(Map<dynamic, dynamic> json) {
    id_soal = json['id_soal'];
    courseID = json['courseID'];
    soal = json['soal'];
    a = json['a'];
    b = json['b'];
    c = json['c'];
    d = json['d'];
    kunci = json['kunci'];
  }
}