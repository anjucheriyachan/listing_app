enum ApiStatus { initial, loading, completed, error }

class ApiCallResponse<Response> {
  ApiStatus? apiStatus;
  Response? response;
  String? message;
  ApiCallResponse(this.apiStatus, this.response, this.message);

  @override
  String toString() {
    return 'ApiStatus is $apiStatus \n Error message :  $message\n Response : $response ';
  }

  ApiCallResponse.initial() : apiStatus = ApiStatus.initial;
  ApiCallResponse.loading() : apiStatus = ApiStatus.loading;
  ApiCallResponse.error(this.message) : apiStatus = ApiStatus.error;
  ApiCallResponse.completed(this.response) : apiStatus = ApiStatus.completed;
}
