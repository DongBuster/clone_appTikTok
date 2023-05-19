import 'package:clone_tiktok/Animations/AnimationsPage.dart';
import 'package:flutter/material.dart';

class MailPage extends StatefulWidget {
  const MailPage({super.key});

  @override
  State<MailPage> createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  // late TextEditingController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideTransitionScreen(
        child: Positioned(
          top: 0,
          left: 0,
          child: TextFormField(
              // controller: _controller,
              ),
        ),
      ),
    );
    // FooterApp()
  }
}
