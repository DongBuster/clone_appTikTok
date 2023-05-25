import 'package:clone_tiktok/layout/mainLayout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:clone_tiktok/Page/AddVideoPage.dart';
import 'package:clone_tiktok/Page/homePage/HomePage.dart';
import 'package:clone_tiktok/Page/MailPage.dart';
import 'package:clone_tiktok/Page/ProfilePage.dart';
import 'package:clone_tiktok/Page/ShopPage.dart';
import 'package:provider/provider.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: 'shell');

class AppRoute {
  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigator,
    initialLocation: '/home',
    routes: [
      GoRoute(
          path: '/home',
          name: 'root',
          builder: (context, state) => const MainLayout(child: HomePage())),
      ShellRoute(
          navigatorKey: _shellNavigator,
          builder: (context, state, child) => MainLayout(child: child),
          routes: [
            GoRoute(
              path: '/home',
              name: 'homeScreen',
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                    child: MainLayout(child: HomePage()));
              },
            ),
            GoRoute(
              path: '/shop',
              name: 'ShopScreen',
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                    child: MainLayout(child: ShopPage()));
              },
              // builder: (context, state) => const ShopPage()
            ),
            GoRoute(
              path: '/addvideo',
              name: 'addvideoScreen',
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                    child: MainLayout(child: AddVideo()));
              },
              // builder: (context, state) => const AddVideo()
            ),
            GoRoute(
              path: '/mail',
              name: 'mailScreen',
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                    child: MainLayout(child: MailPage()));
              },
              // builder: (context, state) => const MailPage()
            ),
            GoRoute(
              path: '/profile',
              name: 'profileScreen',
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                    child: MainLayout(child: ProfilePage()));
              },
              // builder: (context, state) => const ProfilePage()
            ),
          ])
    ],
    errorBuilder: (context, state) {
      return Container(
        alignment: Alignment.center,
        child: Text('error route'),
      );
    },
  );
}
