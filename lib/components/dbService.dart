import 'package:consistent_tracker_app/components/auth_service.dart';
import 'package:consistent_tracker_app/components/db.dart';
import 'package:consistent_tracker_app/struct/task.dart';
import 'package:consistent_tracker_app/struct/user.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;

AuthService authService = AuthService();
DataBase db = DataBase();
String? userID = "";
Future<bool> initalizeUser(User user) async {
  //i'm thinking we have an authentication system here to create
  //the user, which returns true or false, and we can use
  //that to return an error
  //for user data purposes
  try {
    Map<String?, Map<String, dynamic>> payload = {
      await authService.register(user.email, user.password): {
        "taskList": {}
      }
    };
    return db.postUser(payload);
  } on FirebaseAuthException {
    return false;
  }
  //we post the info and expect a boolean to return
}

Future<bool> userLogin(String email, String password) async {
  try{
    userID = await authService.login(email, password);
    print(userID);
    return true;
  } on FirebaseAuthException {
    return false;
  }
}
//during app's running, we save the userID so we could use it to post, update, and delete tasks
bool postTask(int userID, Task task){
  Map<String, Map<String, dynamic>> payload = {
    task.taskID.toString(): {
    "learningGoal": task.learningGoal,
    "description": task.description,
    "startDate": task.startDate,
    "endDate": task.endDate,
    "listProgressLog": task.progressMap
  }};
  return db.postTask(userID, payload);
}

bool updateTask(int userID, int taskID){
  //use the userID to get the task list
  //use the taskID to get the progressMap
  return true;
}

bool deleteTask(int userID, int taskID){
  //use the userID to get the task list
  //use the taskID to delete
  return true;
}

Map getTask(int userID, {int taskID = 0}){
  //use the userID to get the task list
  if (taskID == 0) {
    return {}; //all tasks get returned if no taskID was given
  }
  //use the taskID to retrieve the specific task
  return {};
}