class KelasSaya {
  //int courseID;
  var kelasSayaID;
  var courseID;
  var userID;
  String courseName;
  String courseDescription;
  String courseImage;
  //bool courseEnrolled;
  //String courseEnrolled;
  String lecturerName;
  String lecturerDescription;

  KelasSaya(
      {this.kelasSayaID,this.courseID, this.courseName, this.courseDescription, this.courseImage, this.lecturerName, this.lecturerDescription});

  KelasSaya.fromJson(Map<dynamic, dynamic> json) {
    kelasSayaID = json['kelasSayaID'];
    courseID = json['courseID'];
    userID = json['userID'];
    courseName = json['courseName'];
    courseDescription = json['courseDescription'];
    courseImage = json['courseImage'];
    //courseEnrolled = json['courseEnrolled'];
    lecturerName = json['lecturerName'];
    lecturerDescription = json['lecturerDescription'];
  }
}