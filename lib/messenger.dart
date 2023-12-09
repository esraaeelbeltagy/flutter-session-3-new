import 'package:flutter/material.dart';

import 'conversatiion.dart';
import 'models/names.dart';

class Messenger extends StatelessWidget {
  const Messenger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leadingWidth: 60,
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/pic2.jpg'),
        ),
        title: const Text(
          'Chats',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            maxRadius: 30,
            child: const Icon(
              Icons.camera_alt,
              size: 25,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            maxRadius: 30,
            child: const Icon(
              Icons.edit,
              size: 25,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        //physics: AlwaysScrollableScrollPhysics(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 55,
                width: 355,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      iconColor: Colors.grey,
                      labelText: 'search',
                   
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 22),
                      focusedBorder:
                          UnderlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 120,
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: names1.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 15,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return  ChatIcon(names: names1[index],);
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: names1.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return  Conversation(names: names1[index] ,);
                },
              ),
            ]),
      ),
    );
  }
}
