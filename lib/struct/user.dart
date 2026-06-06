import 'dart:math';
class User {
  //Instance Variables
  String userName;
  int userID = 0;
  String email;
  String password;

  //Classes
  User({
    required this.userName,
    required this.email,
    required this.password,
  }) {
    userID = Random().nextInt(1000000000000);
  }
}