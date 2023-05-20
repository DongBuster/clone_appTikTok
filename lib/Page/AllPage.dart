import 'package:clone_tiktok/Page/AddVideoPage.dart';
import 'package:flutter/material.dart';
import 'package:clone_tiktok/Page/homePage/HomePage.dart';
import 'package:clone_tiktok/Page/MailPage.dart';
import 'package:clone_tiktok/Page/ProfilePage.dart';
import 'package:clone_tiktok/Page/ShopPage.dart';

class AllPage {
  static List<Widget> buildScreens = const [
    HomePage(),
    ShopPage(),
    AddVideo(),
    MailPage(),
    ProfilePage(),
  ];
}
