import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "https://i.ibb.co/CQxfdHY/cat1.jpg",
      "https://i.ibb.co/w6wxdrQ/cat2.jpg",
      "https://i.ibb.co/GnwVqCd/cat3.jpg",
      "https://i.ibb.co/1GMKYBy/cat4.jpg",
      "https://i.ibb.co/cTGzTTX/cat5.jpg",
      "https://i.ibb.co/47Y5Ct5/cat6.jpg",
      "https://i.ibb.co/ZW38ngD/cat7.gif",
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.camera,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.paperplane,
              color: Colors.black,
            ),
          )
        ],
        title: Image.asset(
          'assets/logo.png',
          height: 32,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final image = images[index];
          return Feed(imageUrl: image);
        },
        itemCount: images.length, // 이미지 개수
      ),
    );
  }
}
