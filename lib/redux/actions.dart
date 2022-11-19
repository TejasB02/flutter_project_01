import 'package:flutter_project_01/models/student.dart';
abstract class Action{}

class AddStudent extends Action{
  Student newStudent;
  AddStudent({required this.newStudent});
}