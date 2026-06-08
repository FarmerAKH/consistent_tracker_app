import 'package:consistent_tracker_app/components/dbService.dart';

class Task {
  static int taskCount = 0;
  int taskID = 0;
  int progressID = 0;
  int currentUserID;
  String learningGoal;
  String description;
  DateTime startDate;
  DateTime endDate;

  //for progress remaining calculation
  Map<String, int> hoursPerDay; //{"hours": 0, "minutes": 0}
  Map<String, int> hoursLeft = {"hours": 0, "minutes": 0};
  Map<String, int> totalHours = {"hours": 0, "minutes": 0};
  Map<String, Map<String, dynamic>> progressMap = {};

  //constructors and methods
  Task({
    required this.currentUserID,
    required this.learningGoal,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.hoursPerDay
  }) {
    taskCount++;
    taskID = taskCount;
  }

  bool updateProgress(DateTime date, int hoursDone, int minutesDone, String notes){
    progressID++;
    progressMap[progressID.toString()] = {
      "date": date,
      "hoursDone": hoursDone,
      "minutesDone": minutesDone,
      "notes": notes
    };
    return updateTask(currentUserID, taskID);
  }
}