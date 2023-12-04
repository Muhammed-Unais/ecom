abstract interface class BaseLocalDataService<T> {
  List<T> getData({required String dbName});
  Future<void> postData(T model,{required String dbName});
  Future<void> putData( int index, T model,{required String dbName});
  Future<void> deleteData(int index,{required String dbName});
  T? getAt(int index,{required String dbName});
}