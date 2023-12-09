import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:session_project/instagram.dart';
import 'package:session_project/messenger.dart';
import 'package:session_project/sign-in.dart';
import 'package:session_project/sign-up.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //  SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    // );
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Instagram(),
    );
  }
}
