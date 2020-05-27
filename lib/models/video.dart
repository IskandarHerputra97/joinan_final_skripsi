//class Video {
//  int videoID;
//  int courseID;
//  String videoLink1;
//  String videoLink2;
//  String videoLink3;
//  String videoLink4;
//  String videoLink5;
//  String videoLink6;
//  String videoLink7;
//  String videoLink8;
//  String videoLink9;
//  String videoLink10;
//
//
//  Video(
//      {this.videoID,this.courseID, this.videoLink1, this.videoLink2, this.videoLink3, this.videoLink4, this.videoLink5, this.videoLink6,this.videoLink7,this.videoLink8,this.videoLink9,this.videoLink10});
//
//  Video.fromJson(Map<String, dynamic> json) {
//    videoID = json['videoID'];
//    courseID = json['courseID'];
//    videoLink1 = json['videoLink1'];
//    videoLink2 = json['videoLink2'];
//    videoLink3 = json['videoLink3'];
//    videoLink4 = json['videoLink4'];
//    videoLink5 = json['videoLink5'];
//    videoLink6 = json['videoLink6'];
//    videoLink7 = json['videoLink7'];
//    videoLink8 = json['videoLink8'];
//    videoLink9 = json['videoLink9'];
//    videoLink10 = json['videoLink10'];
//  }
//}

class Video {
  var videoID;
  var courseID;
  String courseName;
  String namaVideo;
  String deskripsiVideo;
  String urlVideo;

  Video(
      {this.videoID,this.courseID,this.courseName,this.namaVideo,this.deskripsiVideo,this.urlVideo});

  Video.fromJson(Map<String, dynamic> json) {
    videoID = json['videoID'];
    courseID = json['courseID'];
    courseName = json['courseName'];
    namaVideo = json['namaVideo'];
    deskripsiVideo = json['deskripsiVideo'];
    urlVideo = json['urlVideo'];
  }
}