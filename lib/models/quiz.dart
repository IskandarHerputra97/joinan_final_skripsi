class Quiz {
  //int courseID;
  var id_soal;
  var courseID;
  String soal;
  String a;
  String b;
  String c;
  String d;
  String kunci;

  Quiz(
      {this.id_soal,this.courseID,this.soal,this.a,this.b,this.c,this.d,this.kunci});

  Quiz.fromJson(Map<dynamic, dynamic> json) {
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