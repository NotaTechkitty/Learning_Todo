import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:learning_todo_app/model/task.dart';

part 'state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  AppState._();
  String get status;
  BuiltList<Task> get tasks;
  factory AppState.create() => AppState((update) => update
    ..status = "idle"
    ..tasks = BuiltList<Task>([]).toBuilder());
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;
}
