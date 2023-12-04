import 'dart:developer';
import 'package:ecom/data/local_storage/base_local_data_service.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalDataService<T> implements BaseLocalDataService<T> {
  @override
  List<T> getData({required String dbName}) {
    final locaDb = Hive.box<T>(dbName);

    return locaDb.values.toList();
  }

  @override
  Future<void> postData(model, {required String dbName}) async {
    final locaDb = Hive.box<T>(dbName);

    try {
      await locaDb.add(model);
    } catch (e) {
      log(e.toString());

      throw e.toString();
    }
  }

  @override
  Future<void> putData(int index, model, {required String dbName}) async {
    final locaDb = Hive.box<T>(dbName);

    try {
      locaDb.putAt(index, model);
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Future<void> deleteData(int index, {required String dbName}) async {
    final locaDb = Hive.box<T>(dbName);

    try {
      locaDb.deleteAt(index);
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  T? getAt(int index, {required String dbName}) {
    final locaDb = Hive.box<T>(dbName);

    return locaDb.getAt(index);
  }

  @override
  Future<int> clearDb({required String dbName}) {
    final locaDb = Hive.box<T>(dbName);
    return locaDb.clear();
  }
}
