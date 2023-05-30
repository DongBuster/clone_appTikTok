import 'package:clone_tiktok/Animations/AnimationsPage.dart';
import 'package:clone_tiktok/Components/InboxMessage.dart';
import 'package:clone_tiktok/Components/createUserImage.dart';
import 'package:flutter/material.dart';

class MailPage extends StatefulWidget {
  const MailPage({super.key});

  @override
  State<MailPage> createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  String url =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbpbjUU1mnP1ymtnMIgzXk0Q2ESozCUX1q2Q&usqp=CAU';
  // late TextEditingController _controller;
  @override
  Widget build(BuildContext context) {
    return SlideTransitionScreen(
      child: Container(
          padding: const EdgeInsets.only(bottom: 61),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 70),
                  Row(
                    children: [
                      Text(
                        'Hộp thư',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 30,
                            height: 18,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Positioned(
                              top: 5,
                              left: 3,
                              child: Icon(
                                Icons.circle,
                                color: Colors.green,
                                size: 10,
                              )),
                          Positioned(
                              top: 0,
                              right: 0,
                              child: Icon(
                                Icons.arrow_drop_down,
                                size: 20,
                                color: Colors.black54,
                              )),
                        ],
                      )
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.only(right: 6),
                      width: 50,
                      child: IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.add_comment_outlined,
                            color: Colors.black,
                          )))
                ],
              ),
              // list user

              SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    MailImageUser(url: url, name: 'Trannie Anh Trang'),
                    MailImageUser(url: url, name: 'Hat Mit Mit'),
                    MailImageUser(url: url, name: 'ThoiTrang giutar'),
                    MailImageUser(url: url, name: 'Le Dang Quang'),
                    MailImageUser(url: url, name: 'Pho Yen Lang'),
                    MailImageUser(url: url, name: 'Trannie Anh Trang'),
                    MailImageUser(url: url, name: 'Trannie Anh Trang'),
                  ],
                ),
              ),

              Column(
                children: [
                  InboxMessage(
                    icon: Icons.person,
                    backgroundColor: Colors.blue,
                    title: 'Những Follower mới',
                    subtitle: 'user123574857 đã bắt đầu Follow bạn',
                    quantity: 3,
                  ),
                  InboxMessage(
                    icon: Icons.notifications,
                    backgroundColor: Colors.pinkAccent,
                    title: 'Những Follower mới',
                    subtitle: 'user123574857 đã bắt đầu Follow bạn',
                    quantity: 0,
                  ),
                  InboxMessage(
                    icon: Icons.inventory,
                    backgroundColor: Colors.black,
                    title: 'Những Follower mới',
                    subtitle: 'user123574857 đã bắt đầu Follow bạn',
                    quantity: 0,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
