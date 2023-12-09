import 'package:flutter/material.dart';

import 'intagram_post.dart';
import 'models/post.dart';

class Instagram extends StatefulWidget {
  Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leadingWidth: double.infinity,
          leading: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Instagram',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
                size: 22,
              ),
              const SizedBox(
                width: 130,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: const [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25,
                  ),
                  PositionedDirectional(
                    top: 0,
                    end: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 5,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: const [
                  Icon(
                    Icons.favorite_border_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                  PositionedDirectional(
                    top: -1,
                    end: -2,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 5,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: const [
                  Icon(
                    Icons.messenger_outline_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  PositionedDirectional(
                    top: -3,
                    end: -5,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 8,
                      child: Center(
                        child: Text(
                          '6',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => InstagramPost(
                  posts: posts[index],
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 25,
                ),
            itemCount: posts.length),

        // bottom navigation bar

        bottomNavigationBar: BottomNavigationBar(
            iconSize: 25,
            currentIndex: 0,
            backgroundColor: Colors.black,
            elevation: 0,
            fixedColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                icon: Column(
                  children: const [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 3,
                    )
                  ],
                ),
                label: 'home',
                backgroundColor: Colors.white,
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                label: 'search',
              ),
              const BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/pic2.jpg'),
                ),
                label: 'camera',
              ),
            ]),
      ),
    );
  }
}
