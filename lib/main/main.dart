import 'package:clone_tiktok/BuildApp/MyApp.dart';
import 'package:clone_tiktok/Page/loginPage/firebase_options.dart';
import 'package:clone_tiktok/provider/GlobalState.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

late Size mq;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => GlobalState(),
      child: const SafeArea(child: MyApp()),
    ),
  );
}
