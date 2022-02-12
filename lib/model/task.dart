import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task.g.dart';

abstract class Task implements Built<Task, TaskBuilder> {
  Task._();
  String get id;
  String get title;
  bool get status;
  factory Task.create(
          {required String id, required String title, required bool status}) =>
      Task((update) => update
        ..id = id
        ..title = title
        ..status = status);
  static Serializer<Task> get serializer => _$taskSerializer;
  factory Task([void Function(TaskBuilder) updates]) = _$Task;
}
