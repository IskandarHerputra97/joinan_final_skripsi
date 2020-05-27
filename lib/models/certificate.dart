class Certificate {
  var certificateID;
  var courseID;
  String courseName;
  String userEmail;
  String certificateContent;


  Certificate(
      {this.certificateID,this.courseID,this.courseName,this.userEmail,this.certificateContent});

  Certificate.fromJson(Map<String, dynamic> json) {
    certificateID = json['certificateID'];
    courseID = json['courseID'];
    courseName = json['courseName'];
    userEmail = json['userEmail'];
    certificateContent = json['certificateContent'];
  }
}