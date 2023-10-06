class DataTransfer<T> {
  dynamic data;
  Exception? exception;
  bool isSuccesful;

  DataTransfer({this.data, this.exception})
      : isSuccesful = data != null ? true : false;
}
