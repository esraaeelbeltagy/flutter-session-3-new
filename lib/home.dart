import 'package:flutter/material.dart';

import 'package:session_project/models/fur.dart';

import 'item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task' , style: TextStyle(color: Colors.black , fontSize: 25),),
        backgroundColor: Colors.amber,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => Item(furn: furnature[index]),
          separatorBuilder: (context, index) => const SizedBox(
                height: 15,
              ),
          itemCount: furnature.length),
    );
  }
}
