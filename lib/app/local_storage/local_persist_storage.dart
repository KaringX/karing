/*import 'package:sqlite3/sqlite3.dart' as sqlite;
import 'package:sqlite_async/sqlite_async.dart';
import 'package:karing/app/utils/log.dart';

class PersistStorage {
  static late SqliteDatabase _db;
  static const _tableName = "ioslate_share_data";
  PersistStorage._();
  static final migrations = SqliteMigrations()
    ..add(SqliteMigration(1, (tx) async {
      await tx.execute(
          'CREATE TABLE IF NOT EXISTS ${_tableName} (id TEXT PRIMARY KEY, data TEXT)');
    }));

  static init() async {
    try {
      //_db = SqliteDatabase(
       //   path: '',
       //   options: const SqliteOptions(journalMode: SqliteJournalMode.memory));
      _db = SqliteDatabase(
          path: 'test.db'); //不能使用内存模式, 因为ioslate会导致生成ioslate对应的实例,导致数据无法共享

      //await migrations.migrate(_db);
      print('PersistStorage done');
    } catch (err) {
      Log.e("PersistStorage init ${e.toString()}");
    }
  }

  static uninit() {
    _db.close();
  }

  static Future<String?> get(String key) async {
    return "";
    try {
      var result = await _db
          .getOptional('SELECT * FROM ${_tableName} WHERE id=?;', [key]);
      if (result == null) {
        return null;
      }
      var ret = result.columnAt(1);
      return ret;
    } catch (err) {
      Log.w(err);
    }

    return null;
  }

  static Future<void> set(String key, value) async {
    return;
    try {
      await _db.execute(
          'INSERT INTO ${_tableName} values(?,?) ON CONFLICT DO UPDATE SET data=?;',
          [key, value, value]);
    } catch (err) {
      Log.w(err);
    }
  }

  static Future<void> cleanAll() async {
    return;
    try {
      await _db.execute('DELETE * FROM ${_tableName};');
    } catch (err) {
      Log.w(err);
    }
  }

  static Future<void> remove(String key) async {
    return;
    try {
      await _db.execute('DELETE * FROM ${_tableName} WHERE id=?;', [key]);
    } catch (err) {
      Log.w(err);
    }
  }
}*/
