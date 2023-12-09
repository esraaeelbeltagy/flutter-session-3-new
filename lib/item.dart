// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'models/fur.dart';

class Item extends StatelessWidget {
  final Furn furn;
  const Item({
    Key? key,
    required this.furn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
       padding: const EdgeInsets.all(12),
       decoration: BoxDecoration(
        
        color: furn.color,
        borderRadius: BorderRadius.circular(20),
       ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image(
                image: AssetImage(
                  furn.image?? '',
                ),
              
              ),
            ),
            const SizedBox(width: 20,),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    furn.title ?? '' ,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    furn.subTitle ?? '',
                    style:const  TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            const Icon(
              Icons.delete,
              size: 30,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
