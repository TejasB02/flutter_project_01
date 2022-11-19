import 'package:flutter_project_01/models/student.dart';
import 'package:flutter_project_01/redux/actions.dart';
import 'package:flutter_project_01/redux/store.dart';

AppState reducers(AppState prevState, dynamic action){
  AppState newState;
  if (action is AddStudent){
    List<Student> newStudents = prevState.students ?? [];
    newStudents.add(action.newStudent);
    newState = AppState.copyWith(prev: prevState, newStudents: newStudents);
  }
  else{
    newState = AppState.copyWith(prev: prevState);
  }
  return newState;
}