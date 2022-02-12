import 'package:built_value/built_value.dart';

part 'task.g.dart';

abstract class Task implements Built<Task, TaskBuilder> {
  Task._();
  int get id;
  String get title;
  bool get status;
  factory Task.create(
          {required int id, required String title, required bool status}) =>
      Task((update) => update
        ..id = id
        ..title = title
        ..status = status);
  factory Task([void Function(TaskBuilder) updates]) = _$Task;
}
