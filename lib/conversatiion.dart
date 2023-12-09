
import 'package:flutter/material.dart';

import 'models/names.dart';

class Conversation extends StatelessWidget {
  final Names names ;
  const Conversation({
    required this.names,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //minLeadingWidth: 50,
      leading: Stack(
        //alignment: AlignmentDirectional.center,
        //clipBehavior: Clip,
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/pic2.jpg',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Positioned(
            right: 3,
            bottom: 0,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(27 / 2),
              ),
            ),
          )
        ],
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children:  [
          Text(
            names.title?? '',
            style:const  TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
         const SizedBox(
            height: 10,
          ),
          Text(
            names.subTitle?? '',
            style:const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
      trailing:  Text(
        '11:37 PM',
        style: const TextStyle(
          fontSize: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}



class ChatIcon extends StatelessWidget {
  final Names names ;
  const ChatIcon({
    
    super.key, required this.names,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          //alignment: AlignmentDirectional.center,
          //clipBehavior: Clip,
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/pic2.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(120 / 2),
              ),
            ),
            Positioned(
              right: 3,
              bottom: 0,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(27 / 2),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
         Text(
          '${names.title.toString().split(' ') [0]} ',
          style: const TextStyle(fontSize: 20, color: Colors.white),
        )
      ],
    );
  }
}
