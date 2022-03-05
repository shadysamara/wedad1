class Post{
  String imageUrl;
  String title;
  User user;
  Post({required this.imageUrl,required this.title,required this.user});
}
class User{
  String imageUrl;
  String userName;
  User({required this.imageUrl,required this.userName});
}