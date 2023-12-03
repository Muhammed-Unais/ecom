abstract interface class BaseLocalDataService<T> {
  Future<dynamic> getData();
  Future<void> postData(T model);
  Future<void> putData(int index, T model);
  Future<void> deleteData(int index);
  T getAt(int index);
}