import 'package:consistent_tracker_app/components/db.dart';
import 'package:consistent_tracker_app/struct/user.dart';


class DataService{
  DataBase db = DataBase();
  int userID = 0;
  bool initalizeUser(User user) {

    //for authentication purposes
    Map<String, String> userAuth = {
      "userName": user.userName,
      "password": user.password
    };

    //i'm thinking we have an authentication system here to create
    //the user, which returns true or false, and we can use
    //that to return an error


    //for user data purposes
    userID++;
    Map<String, Map<String, dynamic>> payload = {
      userID.toString(): {
        "email": user.email,
        "taskList": []
      }
    };

    //we post the info and expect a boolean to return
    return db.postInfo(payload);
  }
}