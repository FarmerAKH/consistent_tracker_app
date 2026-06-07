//import json package here
class DataBase{
  Map<String, dynamic> data = {};

  //this is where i'm think the JSON file is going to go
  DataBase() {}

  bool postUser(Map payload) {
    return true;
  }

  bool postTask(int userID, Map payload){
    return true;
  }
}