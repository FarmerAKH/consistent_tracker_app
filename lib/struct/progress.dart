import 'dart:math';
class ProgressLog {
  int logID = 0;
  DateTime date;
  int hoursDone;
  int minutesDone;
  String notes;

  //constructor
  ProgressLog({ 
    required this.date,
    required this.hoursDone,
    required this.minutesDone,
    required this.notes
  }) {
    logID = Random().nextInt(1000000000000);
  }
}