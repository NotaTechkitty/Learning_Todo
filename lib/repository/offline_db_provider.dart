import 'dart:io';
import 'dart:math';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:learning_todo_app/repository/db_migration.dart';

class OfflineDbProvider {
  OfflineDbProvider._();

  static final OfflineDbProvider provider = OfflineDbProvider._();

  static Database? _database;

  Future<Database> get database async => _database ?? await initDB();

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _dbName);

    var maxMigratedDbVersion = DbMigrator.migrations.keys.reduce(max);

    _database = await openDatabase(path,
        version: maxMigratedDbVersion,
        onOpen: (db) {}, onCreate: (Database db, int _) async {
      DbMigrator.migrations.keys.toList()
        ..sort()
        ..forEach((k) async {
          var script = DbMigrator.migrations[k];
          if (script != null) {
            await db.execute(script);
          }
        });
    }, onUpgrade: (Database db, int _, int __) async {
      var curdDbVersion = await getCurrentDbVersion(db);

      var upgradeScripts = {
        for (var k
            in DbMigrator.migrations.keys.where((k) => k > curdDbVersion))
          k: DbMigrator.migrations[k]
      };

      if (upgradeScripts.isEmpty) return;

      upgradeScripts.keys.toList()
        ..sort()
        ..forEach((k) async {
          var script = upgradeScripts[k];
          if (script != null) {
            await db.execute(script);
          }
        });

      _upgradeDbVersion(db, maxMigratedDbVersion);
    });
    return _database;
  }

  _upgradeDbVersion(Database db, int version) async {
    await db.rawQuery("pragma user_version = $version;");
  }

  Future<int> getCurrentDbVersion(Database db) async {
    var res = await db.rawQuery('PRAGMA user_version;', null);
    var version = res[0]["user_version"].toString();
    return int.parse(version);
  }

  dropDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _dbName);
    return await deleteDatabase(path);
  }

  final String _dbName = "LearningTodo.db";
}
