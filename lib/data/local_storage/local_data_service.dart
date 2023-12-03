import 'dart:developer';
import 'package:ecom/data/local_storage/base_local_data_service.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalDataService<T> implements BaseLocalDataService {
  final locaDb = Hive.box<T>('task-model');

  @override
  Future<dynamic> getData() async {
    return locaDb.values.toList();
  }

  @override
  Future<void> postData(model) async {
    try {
      await locaDb.add(model);
    } catch (e) {
      log(e.toString());

      throw e.toString();
    }
  }

  @override
  Future<void> putData(int index, model) async {
    try {
      locaDb.putAt(index, model);
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Future<void> deleteData(int index) async {
    try {
      locaDb.deleteAt(index);
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  T? getAt(int index) {
    return locaDb.getAt(index);
  }
}
