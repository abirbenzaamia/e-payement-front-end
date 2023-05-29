class APIResponse<T> {
  bool error;
  String errorMessage = "";
  APIResponse({this.error = false, errorMessage});
}
