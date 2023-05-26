import 'package:clone_tiktok/Page/profilePage/utils/export.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

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
    // var mq = MediaQuery.of(context).size;
    return SlideTransitionScreen(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        headerProfile(
          nickname: 'DongBuster',
        ),
        const SizedBox(height: 5),
        //
        imageUser(
            url:
                'https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/302419634_103795319139809_1812813398399367847_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=8IaqVvEYAYUAX8IJVFl&_nc_ht=scontent.fsgn2-5.fna&oh=00_AfDqhqKZXwuVT_560LFIbteC8Lp2F9CglFYejEX4B_jXqg&oe=6467CE76'),
        const SizedBox(height: 5),
        //
        infomationUser(
          name: 'dong_buster',
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
