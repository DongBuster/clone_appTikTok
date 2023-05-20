import 'package:clone_tiktok/Animations/AnimationsPage.dart';
import 'package:clone_tiktok/BuildApp/FooterApp.dart';
import 'package:clone_tiktok/Page/AllPage.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/GlobalState.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<GlobalState>(
      builder: ((context, globalState, child) {
        return Stack(
          children: [AllPage.buildScreens[globalState.indexPage], FooterApp()],
        );
      }),
    );
  }
}
