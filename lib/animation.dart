import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

void main() {
  runApp(VideoBackgroundApp());
}

class VideoBackgroundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Background',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VideoBackgroundPage(),
    );
  }
}

class VideoBackgroundPage extends StatefulWidget {
  @override
  _VideoBackgroundPageState createState() => _VideoBackgroundPageState();
}

class _VideoBackgroundPageState extends State<VideoBackgroundPage> {
  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.network('https://example.com/video.mp4')
      ..initialize().then((_) {
        setState(() {});
        _videoController.play();
        _videoController.setLooping(true);
      });
  }

  @override
  void dispose() {
    super.dispose();
    _videoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Chewie(
              controller: ChewieController(
                videoPlayerController: _videoController,
                autoPlay: true,
                looping: true,
                allowMuting: false,
              ),
            ),
          ),
          Center(
            child: Text(
              'Your Content Goes Here',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
