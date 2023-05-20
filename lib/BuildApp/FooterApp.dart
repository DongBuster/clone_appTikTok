import 'package:clone_tiktok/provider/GlobalState.dart';
import 'package:clone_tiktok/PageRoute/pageRoute.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FooterApp extends StatefulWidget {
  FooterApp({super.key});

  @override
  State<FooterApp> createState() => _FooterAppState();
}

class _FooterAppState extends State<FooterApp> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    int index = Provider.of<GlobalState>(context, listen: false).indexPage;

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Consumer<GlobalState>(builder: (context, globalState, child) {
        return Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          height: 60,
          decoration: BoxDecoration(
              color: _selected != index ? Colors.white : Colors.transparent,
              border: Border(
                  top: _selected == 0
                      ? BorderSide.none
                      : const BorderSide(color: Colors.black12, width: 1))),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //home
                GestureDetector(
                    onTap: () {
                      Provider.of<GlobalState>(context, listen: false)
                          .setIndexPage(0);

                      Future.microtask(() {
                        setState(() {
                          _selected = 0;
                        });
                      });
                    },
                    child: SizedBox(
                      width: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svg/home.svg',
                              width: 35,
                              height: 35,
                              color: _selected == 0
                                  ? Colors.white
                                  : const Color(0xFF9c9c9c)),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: _selected == 0
                                  ? Colors.white
                                  : const Color(0xFF9c9c9c),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                            ),
                          )
                        ],
                      ),
                    )),
                // shop
                GestureDetector(
                    onTap: () {
                      Provider.of<GlobalState>(context, listen: false)
                          .setIndexPage(1);
                      Future.microtask(() {
                        setState(() {
                          _selected = 1;
                        });
                      });
                    },
                    child: SizedBox(
                      width: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _selected == 1
                                ? Icons.shopping_bag
                                : Icons.shopping_bag_outlined,
                            color: _selected == 1
                                ? Colors.black
                                : const Color(0xFF9c9c9c),
                            size: 30,
                          ),
                          Text(
                            'Shop',
                            style: TextStyle(
                              color: _selected == 1
                                  ? Colors.black
                                  : const Color(0xFF9c9c9c),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                            ),
                          )
                        ],
                      ),
                    )),
                // add video
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Provider.of<GlobalState>(context, listen: false)
                          .setIndexPage(2);
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        gradient: const LinearGradient(
                            colors: [Colors.blue, Colors.red],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                    child: Center(
                      child: Container(
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 22,
                        ),
                      ),
                    ),
                  ),
                ),

                // mail
                GestureDetector(
                    onTap: () {
                      Provider.of<GlobalState>(context, listen: false)
                          .setIndexPage(3);

                      Future.microtask(() {
                        setState(() {
                          _selected = 3;
                        });
                      });
                    },
                    child: SizedBox(
                      width: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset('assets/svg/mail.svg',
                              width: 35,
                              height: 35,
                              color: _selected == 3
                                  ? Colors.black
                                  : const Color(0xFF9c9c9c)),
                          Text(
                            'Hộp thư',
                            style: TextStyle(
                                color: _selected == 3
                                    ? Colors.black
                                    : const Color(0xFF9c9c9c),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                wordSpacing: -1),
                          )
                        ],
                      ),
                    )),
                // profile
                GestureDetector(
                    onTap: () {
                      Provider.of<GlobalState>(context, listen: false)
                          .setIndexPage(4);
                      Future.microtask(() {
                        setState(() {
                          _selected = 4;
                        });
                      });
                    },
                    child: SizedBox(
                      width: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svg/user.svg',
                              width: 35,
                              height: 35,
                              color: _selected == 4
                                  ? Colors.black
                                  : const Color(0xFF9c9c9c)),
                          Text(
                            'Hồ sơ',
                            style: TextStyle(
                                color: _selected == 4
                                    ? Colors.black
                                    : const Color(0xFF9c9c9c),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                wordSpacing: -1),
                          )
                        ],
                      ),
                    )),
              ]),
        );
      }),
    );
  }
}
