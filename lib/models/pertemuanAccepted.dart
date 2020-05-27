class PertemuanAccepted {
  var pertemuanID;
  String emailStudent;
  String emailTeacher;
  String namaTeacher;
  String namaCourse;
  String tanggal;
  String jam;
  String lokasi;
  String status;


  PertemuanAccepted(
      {this.pertemuanID,this.emailStudent,this.emailTeacher,this.namaTeacher,this.namaCourse,this.tanggal,this.jam,this.lokasi,this.status});

  PertemuanAccepted.fromJson(Map<String, dynamic> json) {
    pertemuanID = json['pertemuanID'];
    emailStudent = json['emailStudent'];
    emailTeacher = json['emailTeacher'];
    namaTeacher = json['namaTeacher'];
    namaCourse = json['namaCourse'];
    tanggal = json['tanggal'];
    jam = json['jam'];
    lokasi = json['lokasi'];
    status = json['status'];
  }
}