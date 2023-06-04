import 'package:clone_tiktok/utils/export.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final user = FirebaseAuth.instance.currentUser!;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransitionScreen(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        headerProfile(
          nickname: user.displayName!,
        ),
        const SizedBox(height: 5),
        //
        imageUser(url: user.photoURL!),
        const SizedBox(height: 5),
        //
        infomationUser(
          name: user.displayName!,
        ),
        const SizedBox(height: 15),
        //
        const activityUser(),
        const SizedBox(height: 5),
        //
        const feature1(),
        const SizedBox(height: 15),
        //
        const addBio(),
        const SizedBox(height: 5),
        //
        const productOrder(),
        //
        feature2(tabController: _tabController),
        detailFeature2(tabController: _tabController),
        // margin footer app
        const SizedBox(height: 62)
      ]),
    );
  }
}
