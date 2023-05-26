import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class headerProfile extends StatefulWidget {
  String nickname;
  headerProfile({super.key, required this.nickname});

  @override
  State<headerProfile> createState() => _headerProfileState();
}

class _headerProfileState extends State<headerProfile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CachedNetworkImage(
            imageUrl: 'https://cdn-icons-png.flaticon.com/512/6620/6620722.png',
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
                  widget.nickname,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.arrow_drop_down, size: 20, color: Colors.black)
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
              const IconButton(
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
    );
  }
}
