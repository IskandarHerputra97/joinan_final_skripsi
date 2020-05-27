//import 'package:joinan_final_skripsi/models/video.dart';
//import 'package:video_player/video_player.dart';
//import 'package:flutter/material.dart';
//
//
//class VideosDetail extends StatefulWidget {
//
//  final Video video;
//  VideosDetail({this.video});
//
//  @override
//  _VideosDetailState createState() => _VideosDetailState();
//}
//
//class _VideosDetailState extends State<VideosDetail> {
//  VideoPlayerController _controller;
//  Future<void> _initializeVideoPlayerFuture;
//
//  //String linkVideo = 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4';
//
//  @override
//  void initState() {
import 'package:flutter/services.dart';
////    _controller = VideoPlayerController.asset('assets/Belajar Java (Install IDE).mp4');
////    _controller = VideoPlayerController.asset('http://192.168.64.2/my_store/asset/videos/Belajar Java (Intro dan Cara install).mp4');
//    //_controller = VideoPlayerController.network('https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4');
//    //_controller = VideoPlayerController.network('https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4');
//    //_controller = VideoPlayerController.network('https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4');
//    //_controller = VideoPlayerController.network('https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4');
//    _controller = VideoPlayerController.network(widget.video.urlVideo);
//
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
//        //title: Text(widget.video.namaVideo),
//      ),
//      body: Column(
//        children: <Widget>[
//          Expanded(
//            child: FutureBuilder(
//              future: _initializeVideoPlayerFuture,
//              builder: (context, snapshot) {
//                if (snapshot.connectionState == ConnectionState.done) {
//                  // If the VideoPlayerController has finished initialization, use
//                  // the data it provides to limit the aspect ratio of the VideoPlayer.
//                  return AspectRatio(
//                    aspectRatio: _controller.value.aspectRatio,
//                    // Use the VideoPlayer widget to display the video.
//                    child: VideoPlayer(_controller),
//                  );
//                } else {
//                  // If the VideoPlayerController is still initializing, show a
//                  // loading spinner.
//                  return Center(child: CircularProgressIndicator());
//                }
//              },
//            ),
//          ),
//          //Text("${['deskripsiVideo']}"),
//          Text(widget.video.deskripsiVideo),
//        ],
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
import 'package:joinan_final_skripsi/models/video.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';

class VideosDetail extends StatefulWidget {

  //final VideoPlayerController videoPlayerController;
  //final bool looping;
  final Video video;
  //VideosDetail({this.video,@required this.videoPlayerController,this.looping, Key key,}) : super(key: key);
  VideosDetail({this.video});

  @override
  _VideosDetailState createState() => _VideosDetailState();
}

class _VideosDetailState extends State<VideosDetail> {
  ChewieController _chewieController;

  VideoPlayerController _controller;
  //Future<void> _initializeVideoPlayerFuture;

  //String linkVideo = 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4';


  @override
  void initState() {
    _controller = VideoPlayerController.network(widget.video.urlVideo);

    //_initializeVideoPlayerFuture = _controller.initialize();


    super.initState();

    _chewieController = ChewieController(
      //videoPlayerController: VideoPlayerController.network(widget.video.urlVideo);
      videoPlayerController: _controller,
      aspectRatio: 16/9,
      autoInitialize: true,
      deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
      //looping: widget.looping,

      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        );
      }
    );

    //_chewieController = VideoPlayerController.network(widget.video.urlVideo);
    final playerWidget = Chewie(
      controller: _chewieController,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
    _chewieController.dispose();
  }

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Video learning'),
//        //title: Text(widget.video.namaVideo),
//      ),
//      body: Column(
//        children: <Widget>[
////          Expanded(
////            child: FutureBuilder(
////              future: _initializeVideoPlayerFuture,
////              builder: (context, snapshot) {
////                if (snapshot.connectionState == ConnectionState.done) {
////                  // If the VideoPlayerController has finished initialization, use
////                  // the data it provides to limit the aspect ratio of the VideoPlayer.
////                  return AspectRatio(
////                    aspectRatio: _controller.value.aspectRatio,
////                    // Use the VideoPlayer widget to display the video.
////                    child: VideoPlayer(_controller),
////                  );
////                } else {
////                  // If the VideoPlayerController is still initializing, show a
////                  // loading spinner.
////                  return Center(child: CircularProgressIndicator());
////                }
////              },
////            ),
////          ),
//          FutureBuilder(
//            future: _initializeVideoPlayerFuture,
//            builder: (context, snapshot) {
//              if (snapshot.connectionState == ConnectionState.done) {
//                // If the VideoPlayerController has finished initialization, use
//                // the data it provides to limit the aspect ratio of the VideoPlayer.
//                return AspectRatio(
//                  aspectRatio: _controller.value.aspectRatio,
//                  // Use the VideoPlayer widget to display the video.
//                  child: VideoPlayer(_controller),
//                );
//              } else {
//                // If the VideoPlayerController is still initializing, show a
//                // loading spinner.
//                return Center(child: CircularProgressIndicator());
//              }
//            },
//          ),
//          //Text("${['deskripsiVideo']}"),
//          Text(widget.video.deskripsiVideo),
//        ],
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video learning'),
        //title: Text(widget.video.namaVideo),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Chewie(
              controller: _chewieController,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(widget.video.deskripsiVideo),
            ),
          ],
        ),
      ),
    );
  }
}