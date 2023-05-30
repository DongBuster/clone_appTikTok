import 'package:clone_tiktok/Page/homePage/BuildVideoScreen/VideoScreen.dart';
import 'package:clone_tiktok/main/main.dart';
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
  final PageController pageController = PageController();

  final List<String> videoAssets = [
    'assets/video/ok.mp4',
    'assets/video/2.mp4',
    'assets/video/3.mp4',
    'assets/video/4.mp4',
  ];

  Future<VideoPlayerController> initializeVideoController(
      String videoAssetPath) async {
    var controller = VideoPlayerController.asset(videoAssetPath);
    await controller.initialize();
    return controller;
  }

  final List<Future<VideoPlayerController>> videoControllerFutures = [];
  Future<void> loadVideoControllers() async {
    for (final assetPath in videoAssets) {
      videoControllerFutures.add(initializeVideoController(assetPath));
    }
  }

  @override
  void initState() {
    super.initState();
    loadVideoControllers();
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return PageView.builder(
      itemCount: videoAssets.length,
      scrollDirection: Axis.vertical,
      controller: pageController,
      itemBuilder: (context, index) {
        return FutureBuilder<VideoPlayerController>(
          future: videoControllerFutures[index],
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Video(controller: snapshot.data!);
            } else {
              return const Center(
                  child: SizedBox(
                      width: 30,
                      height: 30,
                      child: CircularProgressIndicator()));
            }
          },
        );
      },
      // children: [
      //   Video(controller: VideoPlayerController.asset("assets/video/ok.mp4")),
      //   Video(controller: VideoPlayerController.asset("assets/video/2.mp4")),
      //   Video(controller: VideoPlayerController.asset("assets/video/3.mp4")),
      //   Video(controller: VideoPlayerController.asset("assets/video/4.mp4")),
      // ],
    );
  }
}
