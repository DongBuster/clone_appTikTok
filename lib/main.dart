import 'package:clone_tiktok/BuildApp/MyApp.dart';
import 'package:clone_tiktok/provider/GlobalState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

late Size mq;
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ChangeNotifierProvider(
      create: (context) => GlobalState(),
      child: const SafeArea(child: MyApp()),
    ),
  ));
}
