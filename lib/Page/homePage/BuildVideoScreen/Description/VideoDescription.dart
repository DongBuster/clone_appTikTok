import 'package:clone_tiktok/Page/homePage/BuildVideoScreen/Description/ExpandableText.dart';
import 'package:flutter/material.dart';

class VideoDescription extends StatefulWidget {
  const VideoDescription({super.key});

  @override
  State<VideoDescription> createState() => _VideoDescriptionState();
}

class _VideoDescriptionState extends State<VideoDescription> {
  bool _showText = false;
  String text =
      'Một người vợ đảm đang bên China nấu ăn cho chồng. Trông thật ngon kk k k k k k k k k k k test stest  #China #Funny';

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 80,
      left: 10,
      child: TextContentVideo(
        title: 'Saleall',
        textDescription:
            'Một người vợ đảm đang bên China nấu ăn cho chồng. Trông thật ngon kk k k k k k k k k k k test stetst s etstsdt #China #Funny',
        nameMusic: '♫ Saleall Âm thanh Gốc',
      ),
    );
  }
}
