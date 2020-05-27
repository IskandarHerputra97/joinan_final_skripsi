import 'package:joinan_final_skripsi/models/video.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';


class VideoDetail2 extends StatefulWidget {

  final Video video;
  VideoDetail2({Key key, @required this.video}) : super(key: key);

  @override
  _VideoDetail2State createState() => _VideoDetail2State();
}

class _VideoDetail2State extends State<VideoDetail2> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  //String linkVideo = 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4';

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/Belajar Java (Intro dan Cara install).mp4');
    //_controller = VideoPlayerController.network(widget.video.videoLink1);
    //_controller = VideoPlayerController.network('http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video learning'),
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the VideoPlayer.
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              // Use the VideoPlayer widget to display the video.
              child: VideoPlayer(_controller),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Wrap the play or pause in a call to `setState`. This ensures the
          // correct icon is shown.
          setState(() {
            // If the video is playing, pause it.
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // If the video is paused, play it.
              _controller.play();
            }
          });
        },
        // Display the correct icon depending on the state of the player.
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ), // This trail
    );
  }
}