import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:learning_todo_app/model/task.dart';
import 'package:learning_todo_app/repository/repository.dart';
import 'package:learning_todo_app/store/action/actions.dart';
import 'package:learning_todo_app/store/model/state.dart';
import 'package:redux_epics/redux_epics.dart';

class AppMiddleware implements EpicClass<AppState> {
  final AbstractRepository repository;

  AppMiddleware(this.repository);

  @override
  Stream call(Stream actions, EpicStore<AppState> store) {
    return combineEpics<AppState>([
      epicsGetTasks,
      epicsCreateTask,
    ])(actions, store);
  }

  Stream epicsGetTasks(Stream actions, EpicStore<AppState> store) async* {
    await for (final action in actions) {
      if (action is DoGetTasks) {
        try {
          yield SetStatusApp((update) => update..status = 'loading');
          final BuiltList<Task> tasks = await repository.getAllTasks();
          yield SetGetTasks((update) => update..tasks = tasks.toBuilder());
        } catch (e) {
          yield SetStatusApp((update) => update..status = 'error');
        } finally {
          yield SetStatusApp((update) => update..status = 'idle');
        }
      }
    }
  }

  Stream epicsCreateTask(Stream actions, EpicStore<AppState> store) async* {
    await for (final action in actions) {
      if (action is DoCreateTask) {
        try {
          yield SetStatusApp((update) => update..status = 'loading');
          final String id = DateTime.now().toString();
          final Task task = Task((update) => update
            ..status = 0
            ..title = action.title
            ..id = id);
          await repository.createTask(task);
          final BuiltList<Task> tasks = await repository.getAllTasks();
          yield SetGetTasks((update) => update..tasks = tasks.toBuilder());
        } catch (e) {
          yield SetStatusApp((update) => update..status = 'create task error');
        } finally {
          yield SetStatusApp((update) => update..status = 'idle');
        }
      }
    }
  }
}
