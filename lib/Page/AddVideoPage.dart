import 'package:clone_tiktok/Animations/AnimationsPage.dart';
import 'package:clone_tiktok/BuildApp/FooterApp.dart';
import 'package:clone_tiktok/BuildApp/HeaderApp.dart';
import 'package:flutter/material.dart';

class AddVideo extends StatefulWidget {
  const AddVideo({super.key});

  @override
  State<AddVideo> createState() => _AddVideoState();
}

class _AddVideoState extends State<AddVideo> {
  @override
  Widget build(BuildContext context) {
    return SlideTransitionScreen(
      child: Container(
        color: Colors.green,
        child: Center(
            child: Text(
          'hello',
          style: TextStyle(fontSize: 18, color: Colors.amber),
        )),
      ),
    );
    // FooterApp()
  }
}
