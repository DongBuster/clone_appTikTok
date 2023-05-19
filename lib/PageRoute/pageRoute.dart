import 'package:clone_tiktok/GlobalState.dart';
import 'package:clone_tiktok/Page/AddVideoPage.dart';
import 'package:flutter/material.dart';
import 'package:clone_tiktok/Page/homePage/HomePage.dart';
import 'package:clone_tiktok/Page/MailPage.dart';
import 'package:clone_tiktok/Page/ProfilePage.dart';
import 'package:clone_tiktok/Page/ShopPage.dart';
import 'package:provider/provider.dart';

class pageRouter {
  static List<Widget> buildScreens = const [
    HomePage(),
    ShopPage(),
    AddVideo(),
    MailPage(),
    ProfilePage(),
  ];

  static Route createPageRoute(int index, bool isLeftToRight) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          buildScreens[index],
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const curve = Curves.ease;
        // var begin = Offset(isLeftToRight ? 1.0 : -1.0, 0.0);
        // var end = Offset.zero;
        // var tween =
        //     Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(
              Tween(begin: Offset(-1.0, 0.0), end: Offset.zero)
                  .chain(CurveTween(curve: Curves.ease))),
          child: child,
        );
      },
    );
  }
}
