import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:learning_todo_app/model/task.dart';
import 'package:learning_todo_app/repository/offline_db_provider.dart';
import 'package:learning_todo_app/store/model/serializers.dart';

abstract class AbstractRepository {
  Future<BuiltList<Task>> getAllTasks();
  Future<int> createTask(Task task);
  Future<int> deleteTask(Task task);
  Future<int> updateTask(Task task);
}

class Repository implements AbstractRepository {
  @override
  Future<BuiltList<Task>> getAllTasks() async {
    var db = await OfflineDbProvider.provider.database;
    var res = await db.query("Task");
    if (res.isEmpty) {
      return BuiltList<Task>([]);
    }
    var list = BuiltList<Task>([]);
    for (var todo in res) {
      var task = serializers.deserializeWith<Task>(Task.serializer, todo);
      list = list.rebuild((b) => b..add(task!));
    }
    return list;
  }

  @override
  Future<int> createTask(Task task) async {
    var db = await OfflineDbProvider.provider.database;
    await db.rawInsert(
        "INSERT INTO Task (id, title, status)"
        " VALUES (?,?,?)",
        [task.id, task.title, 0]);
    return 0;
  }

  @override
  Future<int> deleteTask(Task task) async {
    var db = await OfflineDbProvider.provider.database;
    await db.rawDelete("DELETE FROM Task WHERE id = ?", [task.id]);
    return 0;
  }

  @override
  Future<int> updateTask(Task task) async {
    final int newValue;
    if (task.status == 1) {
      newValue = 0;
    } else {
      newValue = 1;
    }
    var db = await OfflineDbProvider.provider.database;
    await db.rawUpdate(
        "UPDATE Task SET status = ? WHERE id = ?", [newValue, task.id]);
    return 0;
  }
}
