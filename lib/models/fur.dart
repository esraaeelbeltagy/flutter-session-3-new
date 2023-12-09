import 'package:flutter/material.dart';

class Furn {
  String? image;
  String? title;
  String? subTitle;
  Color? color;
  Furn(
      { this.image,
       this.title,
       this.subTitle,
       this.color});
}

List<Furn> furnature = [
  Furn(
    image: 'assets/images/bed.png',
    color: Colors.blueAccent,
    title: 'Bed',
    subTitle: 'this is bed ',
  ),
   Furn(
    image: 'assets/images/chair.png',
    color: Colors.greenAccent,
    title: 'Chair',
    subTitle: 'this is chair ',
  ),
   Furn(
    image: 'assets/images/sofa.png',
    color: Colors.grey[300],
    title: 'Sofa',
    subTitle: 'this is bed ',
  )
];
