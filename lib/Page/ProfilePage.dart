import 'package:clone_tiktok/Animations/AnimationsPage.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clone_tiktok/main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String nickname = 'DongBuster';
  String name = 'dong_buster';

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SlideTransitionScreen(
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CachedNetworkImage(
                  imageUrl:
                      'https://cdn-icons-png.flaticon.com/512/6620/6620722.png',
                  width: 25,
                  height: 25,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) {
                    return Image.asset(
                      'assets/img/rose.png',
                      width: 25,
                      height: 25,
                    );
                  },
                ),
                GestureDetector(
                  onTap: null,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 60),
                      Text(
                        nickname,
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const Icon(Icons.arrow_drop_down,
                          size: 20, color: Colors.black)
                    ],
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: null,
                      child: Image.asset('assets/img/footprints.png',
                          width: 25, height: 20),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.menu_sharp,
                        color: Colors.black,
                      ),
                      iconSize: 25,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            CachedNetworkImage(
              imageUrl:
                  'https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/302419634_103795319139809_1812813398399367847_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=8IaqVvEYAYUAX8IJVFl&_nc_ht=scontent.fsgn2-5.fna&oh=00_AfDqhqKZXwuVT_560LFIbteC8Lp2F9CglFYejEX4B_jXqg&oe=6467CE76',
              imageBuilder: (context, imageProvider) {
                return Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 1)),
                );
              },
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: null,
                  child: Text(
                    '@$name',
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: null,
                  child: Icon(
                    Icons.qr_code_scanner,
                    size: 20,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '16',
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Đang Follow',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  child: Column(
                    children: [
                      Text(
                        '3',
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Follower',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  child: Column(
                    children: [
                      Text(
                        '0',
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Thích',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFf1f1f1)),
                    child: const Center(
                      child: Text(
                        'Sửa hồ sơ',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFf1f1f1)),
                    child: Center(
                      child: Text(
                        'Thêm bạn',
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFf1f1f1)),
                child: Center(
                  child: Text(
                    '+ Thêm tiểu sử',
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.shopping_bag_outlined,
                    size: 20,
                    color: Colors.redAccent,
                  ),
                  SizedBox(width: 2),
                  Text(
                    'Đơn hàng',
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            // TabBarView(children: )
          ]),
        ),
      ),
    );
    // FooterApp()
  }
}
