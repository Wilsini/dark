import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Vida extends StatefulWidget {
  const Vida({Key? key}) : super(key: key);

  @override
  State<Vida> createState() => _VidaState();
}

class _VidaState extends State<Vida> {
  late VideoPlayerController _controller;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('images/a.mp4')
      ..initialize().then((_) {
        if (mounted) {
          setState(() {});
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildVideo(),
          _buildControlButton(),
          _buildText(),
        ],
      ),
    );
  }

  Widget _buildVideo() {
    if (_controller.value.isInitialized) {
      return GestureDetector(
        onTap: () {
          setState(() {
            isPlaying = !isPlaying;
            if (isPlaying) {
              _controller.play();
            } else {
              _controller.pause();
            }
          });
        },
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ),
      );
    } else {
      return Center(child: CircularProgressIndicator());
    }
  }

  Widget _buildControlButton() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: IconButton(
          icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
          onPressed: () {
            setState(() {
              isPlaying = !isPlaying;
              if (isPlaying) {
                _controller.play();
              } else {
                _controller.pause();
              }
            });
          },
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildText() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Text(
          'Recuerda pausar el video antes de ir a cualquier otra parte',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}


