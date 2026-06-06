import 'dart:math';
import 'package:consistent_tracker_app/struct/progress.dart';

class Task {
  int taskID = 0;
  String learningGoal;
  String description;
  DateTime startDate;
  DateTime endDate;
  List<ProgressLog> progressList;

  //constructors and methods
  Task({
    required this.learningGoal,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.progressList
  }) {
    taskID = Random().nextInt(1000000000000);
  }

}