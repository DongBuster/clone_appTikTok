import 'package:clone_tiktok/Animations/AnimationsPage.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  String nickname = 'DongBuster';
  String name = 'dong_buster';

  late TabController _tabController;
  int _selectedTab = 0;

  late String _selectedText = 'Bài đăng';

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
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SlideTransitionScreen(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          // header
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
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
          ),
          const SizedBox(height: 5),
          // image user
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
          // name user
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

          //
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
          const SizedBox(height: 5),

          //
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFf1f1f1)),
                  child: const Center(
                    child: Text(
                      'Sửa hồ sơ',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFf1f1f1)),
                  child: const Center(
                    child: Text(
                      'Thêm bạn',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),

          //
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

          //
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

          Container(
              height: 50,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(10, 0, 0, 0), width: 1))),
              child: TabBar(
                indicatorColor: Colors.black,
                overlayColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                controller: _tabController,
                onTap: (value) {
                  setState(() {
                    _selectedTab = value;
                  });
                  print('index: $value');
                  print('_selected: $_selectedTab');
                },
                tabs: [
                  Tab(
                    icon: SvgPicture.asset(
                      'assets/svg/tabmenu.svg',
                      width: 25,
                      height: 25,
                      color: _selectedTab == 0
                          ? Colors.black
                          : const Color(0xFF9c9c9c),
                    ),
                  ),
                  Tab(
                      icon: SvgPicture.asset(
                    'assets/svg/lock.svg',
                    width: 20,
                    height: 20,
                    color: _selectedTab == 1
                        ? Colors.black
                        : const Color(0xFF9c9c9c),
                  )),
                  Tab(
                      icon: Icon(Icons.bookmark_border,
                          size: 25,
                          color: _selectedTab == 2
                              ? Colors.black
                              : const Color(0xFF9c9c9c))),
                  Tab(
                      icon: SvgPicture.asset(
                    'assets/svg/liked.svg',
                    width: 25,
                    height: 25,
                    color: _selectedTab == 3
                        ? Colors.black
                        : const Color(0xFF9c9c9c),
                  )),
                ],
              )),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              // library video
              Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.photo_library_outlined,
                      size: 50,
                      color: Color(0xFF9c9c9c),
                    ),
                    const SizedBox(height: 5),
                    //
                    const Text(
                      'Đâu là những bức ảnh đẹp bạn đã',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'chụp được gần đây?',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    //
                    const SizedBox(height: 5),
                    GestureDetector(
                      onTap: null,
                      child: Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red),
                        child: const Center(
                          child: Text('Tải lên',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // private variables
              Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Video riêng tư của bạn',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Để các video của bạn chỉ hiện thị với riêng ban, hãy đặt',
                      style: TextStyle(fontSize: 14, color: Colors.black38),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'đặt video thành "Riêng tư" trong phần cài đặt.',
                      style: TextStyle(fontSize: 14, color: Colors.black38),
                    ),
                    //
                  ],
                ),
              ),
              //bookmark video
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedText = 'Bài đăng';
                                    });
                                  },
                                  child: TextWidget(
                                      text: 'Bài đăng',
                                      selectedText: _selectedText)),
                            ),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedText = 'Bình luận';
                                  });
                                },
                                child: TextWidget(
                                    text: 'Bình luận',
                                    selectedText: _selectedText)),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedText = 'Hiệu ứng';
                                  });
                                },
                                child: TextWidget(
                                    text: 'Hiệu ứng',
                                    selectedText: _selectedText)),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedText = 'Âm thanh';
                                  });
                                },
                                child: TextWidget(
                                    text: 'Âm thanh',
                                    selectedText: _selectedText)),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedText = 'Bộ sưu tập';
                                  });
                                },
                                child: TextWidget(
                                    text: 'Bộ sưu tập',
                                    selectedText: _selectedText)),
                            Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedText = 'Câu hỏi';
                                      });
                                    },
                                    child: TextWidget(
                                        text: 'Câu hỏi',
                                        selectedText: _selectedText))),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                        color: Colors.white,
                      ))
                    ],
                  )),
              Container(
                color: Colors.white,
              ),
            ]),
          ),
          const SizedBox(height: 61)
        ]),
      ),
    );
  }
}

class TextWidget extends StatefulWidget {
  String text;
  String selectedText;
  TextWidget({super.key, required this.text, required this.selectedText});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  Color handleColorText(String text) {
    if (widget.selectedText == text) {
      return Colors.black;
    } else {
      print('Text:${widget.text}');
      print('selectedText:${widget.selectedText}');
      return const Color(0xFF9c9c9c);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Center(
        child: Text(widget.text,
            style:
                TextStyle(fontSize: 15, color: handleColorText(widget.text))),
      ),
    );
  }
}
