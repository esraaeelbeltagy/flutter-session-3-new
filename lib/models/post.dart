import 'package:session_project/models/user.dart';

class Post {
  User? user;
  String? title;
  String? image;

  Post({required this.user, required this.title, required this.image});
}

List<Post> posts = [
  Post(
    user: User(name: 'Esraa.beltagy', image: 'assets/images/pic2.jpg'),
    title: 'I am a fllutter develpoer , i learn flutter in Eraa-soft',
    image: 'assets/images/pan-cake.jpg',
  ),

   Post(
    user: User(name: 'Maha ghoniem', image: 'assets/images/maha.jpg'),
    title: 'I am a Data Analisist , i learn flutter in Eraa-soft',
    image: 'assets/images/eggs.jpg',
  ),
    Post(
    user: User(name: 'Ali Mohammed', image: 'assets/images/ali.jpg'),
    title: 'I am a Front-end , i learn flutter in Eraa-soft',
    image: 'assets/images/pizza.jpg',
  ),
    Post(
    user: User(name: 'Alaa Ahmed', image: 'assets/images/alaa.jpg'),
    title: 'I am a Front-end , i learn flutter in Eraa-soft',
    image: 'assets/images/cake.jpg',
  ),
];
