import 'package:flutter/material.dart';
import 'package:clone_tiktok/BuildApp/FooterApp.dart';

class MainLayout extends StatefulWidget {
  Widget child;
  MainLayout({super.key, required this.child});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [widget.child, FooterApp()],
      ),
    );
  }
}
