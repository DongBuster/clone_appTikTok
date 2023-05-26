import 'package:clone_tiktok/BuildApp/MyApp.dart';
import 'package:clone_tiktok/provider/GlobalState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

late Size mq;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => GlobalState(),
      child: const SafeArea(child: MyApp()),
    ),
  );
}

// ThemeData _buildTheme(brightness) {
//   var baseTheme = ThemeData(brightness: brightness);

//   return baseTheme.copyWith(
//     textTheme: GoogleFonts.ralewayTextTheme(baseTheme.textTheme).copyWith(

//         )
//   );
// }
