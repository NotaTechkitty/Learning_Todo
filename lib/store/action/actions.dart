import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:learning_todo_app/model/task.dart';

part 'actions.g.dart';

// Create task
abstract class DoCreateTask
    implements Built<DoCreateTask, DoCreateTaskBuilder> {
  DoCreateTask._();
  String get title;
  factory DoCreateTask.create({required String title}) =>
      DoCreateTask((update) => update..title = title);
  factory DoCreateTask([void Function(DoCreateTaskBuilder) updates]) =
      _$DoCreateTask;
}

abstract class SetCreateTask
    implements Built<SetCreateTask, SetCreateTaskBuilder> {
  SetCreateTask._();
  String get title;
  factory SetCreateTask.create({required String title}) =>
      SetCreateTask((update) => update..title = title);
  factory SetCreateTask([void Function(SetCreateTaskBuilder) updates]) =
      _$SetCreateTask;
}
// --------------------------

// Get tasks
abstract class DoGetTasks implements Built<DoGetTasks, DoGetTasksBuilder> {
  DoGetTasks._();
  factory DoGetTasks([void Function(DoGetTasksBuilder) updates]) = _$DoGetTasks;
}

abstract class SetGetTasks implements Built<SetGetTasks, SetGetTasksBuilder> {
  SetGetTasks._();
  BuiltList<Task> get tasks;
  factory SetGetTasks.create({required BuiltList<Task> tasks}) =>
      SetGetTasks((update) => update..tasks = tasks.toBuilder());
  factory SetGetTasks([void Function(SetGetTasksBuilder) updates]) =
      _$SetGetTasks;
}
// --------------------------

// Get delete
abstract class DoDeleteTask
    implements Built<DoDeleteTask, DoDeleteTaskBuilder> {
  DoDeleteTask._();
  Task get task;
  factory DoDeleteTask.create({required Task task}) =>
      DoDeleteTask((update) => update..task = task.toBuilder());
  factory DoDeleteTask([void Function(DoDeleteTaskBuilder) updates]) =
      _$DoDeleteTask;
}

abstract class SetDeleteTask
    implements Built<SetDeleteTask, SetDeleteTaskBuilder> {
  SetDeleteTask._();
  Task get task;
  factory SetDeleteTask.create({required Task task}) =>
      SetDeleteTask((update) => update..task = task.toBuilder());
  factory SetDeleteTask([void Function(SetDeleteTaskBuilder) updates]) =
      _$SetDeleteTask;
}
// -------------------------

// set app Status

abstract class SetStatusApp
    implements Built<SetStatusApp, SetStatusAppBuilder> {
  SetStatusApp._();
  String get status;
  factory SetStatusApp.create({required String status}) =>
      SetStatusApp((update) => update..status = status);
  factory SetStatusApp([void Function(SetStatusAppBuilder) updates]) =
      _$SetStatusApp;
}
