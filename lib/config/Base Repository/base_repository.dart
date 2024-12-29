abstract class BaseRepository {
  Future<dynamic> getApi(String getApiUrl);

  Future<dynamic> putApi(String putApiUrl, dynamic data);
}
