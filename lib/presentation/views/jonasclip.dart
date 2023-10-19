import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class JonasClip extends StatefulWidget {
  const JonasClip({super.key});

  @override
  State<JonasClip> createState() => _JonasClipState();
}

class _JonasClipState extends State<JonasClip> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('images/3.mp4')
      ..initialize().then((_) {
        if (mounted) {
          setState(() {});
          _controller.play();
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            _controller.pause();
            Navigator.of(context).pop();
          },
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          _buildVideo(),
        ],
      ),
    );
  }

  Widget _buildVideo() {
    if (_controller.value.isInitialized) {
      return AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      );
    } else {
      return Center(child: CircularProgressIndicator());
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}