import 'package:clone_tiktok/Page/homePage/BuildVideoScreen/VideoScreen.dart';
import 'package:clone_tiktok/main.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ViewAllVideo extends StatefulWidget {
  const ViewAllVideo({
    super.key,
  });

  @override
  State<ViewAllVideo> createState() => _ViewAllVideoState();
}

class _ViewAllVideoState extends State<ViewAllVideo> {
  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    final PageController pageController = PageController();
    return PageView(
      scrollDirection: Axis.vertical,
      controller: pageController,
      children: [
        Video(controller: VideoPlayerController.asset("assets/video/ok.mp4")),
        Video(controller: VideoPlayerController.asset("assets/video/2.mp4")),
        Video(controller: VideoPlayerController.asset("assets/video/3.mp4")),
        Video(controller: VideoPlayerController.asset("assets/video/4.mp4")),
      ],
    );
  }
}
