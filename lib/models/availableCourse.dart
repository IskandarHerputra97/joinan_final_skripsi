class AvailableCourse {
  //int courseID;
  var courseID;
  String courseName;
  String courseDescription;
  String courseImage;
  //bool courseEnrolled;
  //String courseEnrolled;
  String lecturerName;
  String lecturerEmail;
  String lecturerDescription;

  AvailableCourse(
      {this.courseID, this.courseName, this.courseDescription, this.courseImage, this.lecturerName, this.lecturerEmail, this.lecturerDescription});

  AvailableCourse.fromJson(Map<dynamic, dynamic> json) {
    courseID = json['courseID'];
    courseName = json['courseName'];
    courseDescription = json['courseDescription'];
    courseImage = json['courseImage'];
    //courseEnrolled = json['courseEnrolled'];
    lecturerName = json['lecturerName'];
    lecturerEmail = json['lecturerEmail'];
    lecturerDescription = json['lecturerDescription'];
  }
}

//  factory AvailableCourse.createAvailableCourse(Map<String,dynamic> objAvailableCourse)
//  {
//    return AvailableCourse(
//      courseID: objAvailableCourse['courseID'],
//      courseName: objAvailableCourse['courseName'],
//      courseDescription: objAvailableCourse['courseDescription'],
//      courseImage: objAvailableCourse['courseImage'],
//      courseEnrolled: objAvailableCourse['courseEnrolled'],
//      lecturerName: objAvailableCourse['lecturerName'],
//      lecturerDescription: objAvailableCourse['lecturerDescription'],
//    );
//  }

//  factory AvailableCourse.fromJson(Map<String,dynamic> json)
//  {
//    return new AvailableCourse(
//      courseID: json['courseID'],
//      courseName: json['courseName'],
//      courseDescription: json['courseDescription'],
//      courseImage: json['courseImage'],
//      courseEnrolled: json['courseEnrolled'],
//      lecturerName: json['lecturerName'],
//      lecturerDescription: json['lecturerDescription'],
//    );
//  }

//  static Future<AvailableCourse> connectToAPI() async
//  {
//    String url = "https://api.myjson.com/bins/rd8y2";
//
//    var result = await http.get(url);
//    var jsonObject = json.decode(result.body);
//    var availableCourseData = (jsonObject as Map <String, dynamic>);
//
//    return AvailableCourse.createAvailableCourse(availableCourseData);
//  }

//  Future<List<AvailableCourse>> _getAvailableCourse() async {
//    var data = await http.get("https://api.myjson.com/bins/rd8y2");
//    var jsonData = jsonDecode(data.body);
//    List<AvailableCourse> availableCourses = [];
//    for(var u in jsonData){
//      AvailableCourse availableCourse = AvailableCourse(u["courseID"],u["courseName"],u["courseDescription"],u["courseImage"],u["courseEnrolled"],u["lecturerName"],u["lecturerDescription"]);
//      availableCourses.add(availableCourse);
//    }
//  }
//}

//class AvailableCourseList {
//  final List<AvailableCourse> availableCourses;
//
//  AvailableCourseList({
//    this.availableCourses,
//  });
//
//  factory AvailableCourseList.fromJson(List<dynamic> parsedJson) {
//
//    List<AvailableCourse> availableCourses = new List<AvailableCourse>();
//
//    return new AvailableCourseList(
//      availableCourses: availableCourses,
//    );
//  }
//}