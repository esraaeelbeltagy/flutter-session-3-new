
import 'package:flutter/material.dart';

import 'models/post.dart';

class InstagramPost extends StatelessWidget {
  final Post posts ;
  const InstagramPost({
    super.key, required this.posts,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  image:  DecorationImage(
                    image: AssetImage(
                      posts.user?.image?? '',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30 / 2),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
               Expanded(
                 child: Text(
                  posts.user?.name ?? '',
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                             ),
               ),
              
              const Icon(
                Icons.more_horiz_outlined,
                size: 25,
                color: Colors.white,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 400,
          child: PageView.builder(
            itemBuilder: (context, i) => Image.asset(
              posts.image ?? '',
              fit: BoxFit.cover,
            ),
            itemCount: 4,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(
                Icons.comment_bank_outlined,
                color: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(
                Icons.send,
                color: Colors.white,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.grey,
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.save_alt,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/pic2.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20 / 2),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: Text(
                  'Liked by Flutter Developer and 44 others ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
         Text(
         posts.title ?? '',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image:  DecorationImage(
                    image: AssetImage(
                     posts.user?.image ?? '',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(40 / 2),
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Colors.white,),
                  ),
                  child: TextFormField(
                  initialValue:'Add comment..',
                  style: const TextStyle(color: Colors.grey),
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    autofocus: false,
                  ),
                ),
              ),
              const SizedBox(width: 10,)
            ],
          ),
          
        ),
        SizedBox(height: 25,),
      ],
      
    );
  }
}
