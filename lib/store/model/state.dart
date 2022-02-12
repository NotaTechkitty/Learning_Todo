import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  AppState._();
  String get status;
  BuiltList get tasks;
  factory AppState.create({required String status, required BuiltList tasks}) =>
      AppState((update) => update
        ..status = status
        ..tasks = tasks.toBuilder());
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;
}
