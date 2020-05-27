//import 'package:video_player/video_player.dart';
//import 'package:flutter/material.dart';
//
//class VideoLearning extends StatefulWidget {
//  @override
//  _VideoLearningState createState() => _VideoLearningState();
//}
//
//class _VideoLearningState extends State<VideoLearning> {
//  VideoPlayerController _controller;
//  Future<void> _initializeVideoPlayerFuture;
//
//  String linkVideo = 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4';
//
//  @override
//  void initState() {
//    _controller = VideoPlayerController.network('$linkVideo');
//    //_controller = VideoPlayerController.network('http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4');
//    _initializeVideoPlayerFuture = _controller.initialize();
//
//    super.initState();
//  }
//
//  @override
//  void dispose() {
//    _controller.dispose();
//
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Video learning'),
//      ),
//      body: FutureBuilder(
//        future: _initializeVideoPlayerFuture,
//        builder: (context, snapshot) {
//          if (snapshot.connectionState == ConnectionState.done) {
//            // If the VideoPlayerController has finished initialization, use
//            // the data it provides to limit the aspect ratio of the VideoPlayer.
//            return AspectRatio(
//              aspectRatio: _controller.value.aspectRatio,
//              // Use the VideoPlayer widget to display the video.
//              child: VideoPlayer(_controller),
//            );
//          } else {
//            // If the VideoPlayerController is still initializing, show a
//            // loading spinner.
//            return Center(child: CircularProgressIndicator());
//          }
//        },
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          // Wrap the play or pause in a call to `setState`. This ensures the
//          // correct icon is shown.
//          setState(() {
//            // If the video is playing, pause it.
//            if (_controller.value.isPlaying) {
//              _controller.pause();
//            } else {
//              // If the video is paused, play it.
//              _controller.play();
//            }
//          });
//        },
//        // Display the correct icon depending on the state of the player.
//        child: Icon(
//          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//        ),
//      ), // This trail
//    );
//  }
//}

//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:joinan_final_skripsi/models/availableCourse.dart';
//import 'package:http/http.dart' as http;
//import 'package:joinan_final_skripsi/models/video.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/availableCourseDetail.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail10.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail2.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail3.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail4.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail5.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail6.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail7.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail8.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail9.dart';
//
//class VideoList extends StatefulWidget {
//
//  final AvailableCourse availableCourse;
//  VideoList({Key key, @required this.availableCourse}) : super(key: key);
//
//  @override
//  _VideoListState createState() => _VideoListState();
//}
//
//class _VideoListState extends State<VideoList> {
//
//
//
//  List<Video> _videos = List<Video>();
//
//  Future<List<Video>> fetchVideo() async {
//    //var url = 'https://api.myjson.com/bins/81dbq';
//    var url = 'https://api.myjson.com/bins/18byd2';
//    var response = await http.get(url);
//
//    var videos = List<Video>();
//
//    if (response.statusCode == 200) {
//      var videosJson = json.decode(response.body);
//      for (var videoJson in videosJson) {
//        videos.add(Video.fromJson(videoJson));
//      }
//    }
//    return videos;
//  }
//
//  @override
//  void initState() {
//    fetchVideo().then((value) {
//      setState(() {
//        _videos.addAll(value);
//      });
//    });
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    print('test video learning');
//    print(widget.availableCourse.courseID);
//    //int courseID = widget.availableCourse.courseID;
//    return Scaffold(
//        appBar: AppBar(
//          title: Text('Video Learning'),
//        ),
//        body: Column(
//          children: <Widget>[
//            Expanded(
//              child: ListView.builder(
//                itemBuilder: (context, index) {
//                  return Card(
//                    child: Padding(
//                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
//                      child: ListTile(
//                        //title: Text('Topik $index'),
//                        title: Text('Mulai video learning sekarang!'),
//                        onTap: () {
//                          //Navigator.push(context, new MaterialPageRoute(builder: (context) => VideoDetail()));
//                        },
//                      ),
//                    ),
//                  );
//                },
//                itemCount: _videos.length,
//              ),
//            ),
//            //Text('test'),
//            RaisedButton(
//              onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => VideoDetail()));
//                //Navigator.push(context, new MaterialPageRoute(builder: (context) => AvailableCourseDetail(availableCourse: _availableCourses[index])));
//              },
//              child: Text('Video 1'),
//            ),
//            RaisedButton(
//              onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => VideoDetail2()));
//              },
//              child: Text('Video 2'),
//            ),
//            RaisedButton(
//              onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => VideoDetail3()));
//              },
//              child: Text('Video 3'),
//            ),
//            RaisedButton(
//              onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => VideoDetail4()));
//              },
//              child: Text('Video 4'),
//            ),
//            RaisedButton(
//              onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => VideoDetail5()));
//              },
//              child: Text('Video 5'),
//            ),
//            RaisedButton(
//              onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => VideoDetail6()));
//              },
//              child: Text('Video 6'),
//            ),
//            RaisedButton(
//              onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => VideoDetail7()));
//              },
//              child: Text('Video 7'),
//            ),
//            RaisedButton(
//              onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => VideoDetail8()));
//              },
//              child: Text('Video 8'),
//            ),
//            RaisedButton(
//              onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => VideoDetail9()));
//              },
//              child: Text('Video 9'),
//            ),
//            RaisedButton(
//              onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => VideoDetail10()));
//              },
//              child: Text('Video 10'),
//            ),
//          ],
//        )
//    );
//  }
//}

//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:joinan_final_skripsi/models/availableCourse.dart';
//import 'package:http/http.dart' as http;
//import 'package:joinan_final_skripsi/models/video.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/availableCourseDetail.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail10.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail2.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail3.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail4.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail5.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail6.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail7.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail8.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail9.dart';
//
//class VideoList extends StatefulWidget {
//
//  //List list;
//  //int index;
//  AvailableCourse availableCourse;
//  VideoList({this.availableCourse});
//
//  @override
//  _VideoListState createState() => _VideoListState();
//}
//
//class _VideoListState extends State<VideoList> {
//
//  Future<List<dynamic>> getVideo() async {
//    //final response = await http.get("http://192.168.64.2/my_store/asset/videos/");
//    //final response = await http.get("http://192.168.64.2/my_store/getForum.php");
//    final response = await http.get("http://192.168.64.2/my_store/getVideos.php");
//    return json.decode(response.body);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          title: Text('Video Learning'),
//        ),
//        body: FutureBuilder(
//          future: getVideo(),
//          builder: (context, snapshot) {
//            if(snapshot.hasError) {
//              print(snapshot.error);
//            }else if(snapshot.hasData) {
//              return Videos(list: snapshot.data);
//            }
//            return Text('loading');
//          }
//        ),
//    );
//  }
//}
//
//class Videos extends StatelessWidget {
//
//  final List list;
//  Videos({this.list});
//
//  @override
//  Widget build(BuildContext context) {
//    return ListView.builder(
//      itemCount: list==null ? 0 : list.length,
//      itemBuilder: (context, i) {
//        return Container(
//          padding: EdgeInsets.all(10.0),
//          child: GestureDetector(
//            onTap: ()=> Navigator.of(context).push(
//              MaterialPageRoute(
//                builder: (BuildContext context)=> VideosDetail(list: list, index: i)
//              )
//            ),
//            child: Card(
//              child: ListTile(
//                title: Text("${i+1} - ${list[i]['namaVideo']}"),
//              ),
//            ),
//          ),
//        );
//      }
//    );
//  }
//}

//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:joinan_final_skripsi/models/availableCourse.dart';
//import 'package:http/http.dart' as http;
//import 'package:joinan_final_skripsi/models/video.dart';
//import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail.dart';
//
//class VideoList extends StatefulWidget {
//
//  AvailableCourse availableCourse;
//  VideoList({this.availableCourse});
//
//  @override
//  _VideoListState createState() => _VideoListState();
//}
//
//class _VideoListState extends State<VideoList> {
//
////  Future<List<dynamic>> getVideo() async {
////    //final response = await http.get("http://192.168.64.2/my_store/asset/videos/");
////    //final response = await http.get("http://192.168.64.2/my_store/getForum.php");
////    final response = await http.get("http://192.168.64.2/my_store/getVideos.php");
////    return json.decode(response.body);
////  }
//
//  List<Video> _videos = List<Video>();
//
//  Future<List<Video>> fetchVideo() async {
//    var url = 'http://192.168.64.2/my_store/getVideos.php';
//    var response = await http.get(url);
//
//    var videos = List<Video>();
//
//    if (response.statusCode == 200) {
//      var videosJson = json.decode(response.body);
//      for (var videoJson in videosJson) {
//        videos.add(Video.fromJson(videoJson));
//      }
//    }
//    return videos;
//  }
//
//
//  @override
//  void initState() {
//    fetchVideo().then((value) {
//      setState(() {
//        _videos.addAll(value);
//      });
//    });
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Video Learning'),
//      ),
//      body: ListView.builder(
//        itemCount: _videos.length,
//        itemBuilder: (context, index) {
//          return Card(
//            child: Padding(
//              padding: const EdgeInsets.only(
//                  top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
//              child: ListTile(
//                title: Text('${index+1} - ${_videos[index].namaVideo}'),
//                subtitle: Text(_videos[index].courseName.toString()),
//                onTap: () {
//                  Navigator.push(context, new MaterialPageRoute(builder: (context) => VideosDetail(video: _videos[index],)));
//                },
//              ),
//            ),
//          );
//        },
//      )
//    );
//  }
//}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:joinan_final_skripsi/main.dart';
import 'package:joinan_final_skripsi/models/availableCourse.dart';
import 'package:http/http.dart' as http;
import 'package:joinan_final_skripsi/models/video.dart';
import 'package:joinan_final_skripsi/screens/pelajaran/videoDetail.dart';
import 'package:chewie/chewie.dart';

class VideoList extends StatefulWidget {

  AvailableCourse availableCourse;
  VideoList({this.availableCourse});

  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {

//  Future<List<dynamic>> getVideo() async {
//    //final response = await http.get("http://192.168.64.2/my_store/asset/videos/");
//    //final response = await http.get("http://192.168.64.2/my_store/getForum.php");
//    final response = await http.get("http://192.168.64.2/my_store/getVideos.php");
//    return json.decode(response.body);
//  }

  List<Video> _videos = List<Video>();

  Future<List<Video>> fetchVideo() async {
    var url = 'http://$myIP/joinan/getVideos.php';
    var response = await http.get(url);

    var videos = List<Video>();

    if (response.statusCode == 200) {
      var videosJson = json.decode(response.body);
      for (var videoJson in videosJson) {
        if(videoJson['courseID'] == widget.availableCourse.courseID) {
          videos.add(Video.fromJson(videoJson));
        }
      }
    }
    return videos;
  }


  @override
  void initState() {
    fetchVideo().then((value) {
      setState(() {
        _videos.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Video Learning'),
        ),
        body: ListView.builder(
          itemCount: _videos.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                child: ListTile(
                  title: Text('${index+1} - ${_videos[index].namaVideo}'),
                  subtitle: Text(_videos[index].courseName.toString()),
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => VideosDetail(video: _videos[index],)));
                  },
                ),
              ),
            );
          },
        )
    );
  }
}