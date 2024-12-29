import 'dart:async';

import 'package:http/http.dart' as http;

import '../../data/Exceptions/app_exceptions.dart';
import '../Base Repository/base_repository.dart';

class NetworkRepository implements BaseRepository {
  @override
  Future getApi(String getApiUrl) async {
    try {
      final response = await http
          .get(Uri.parse(getApiUrl))
          .timeout(const Duration(seconds: 60));
      return _handleResponseStatusCode(response);
    } on TimeoutException {
      throw TimeoutException('The request timed out.');
    } on SocketException {
      throw SocketException('No Internet connection.');
    } catch (e) {
      throw AppException('Unexpected error: $e');
    }
  }

  @override
  Future putApi(String putApiUrl, dynamic data) async {
    try {
      final response = await http
          .put(Uri.parse(putApiUrl), body: data)
          .timeout(const Duration(seconds: 60));
      return _handleResponseStatusCode(response);
    } on TimeoutException {
      throw TimeoutException('The request timed out.');
    } on SocketException {
      throw SocketException('No Internet connection.');
    } catch (e) {
      throw AppException('Unexpected error: $e');
    }
  }

  String _handleResponseStatusCode(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return response.body;
      case 400:
        throw BadRequestException(response.body);
      case 401:
        throw UnauthorizedException('Unauthorized access: ${response.body}');
      case 403:
        throw UnauthorizedException('Forbidden access: ${response.body}');
      case 404:
        throw NotFoundException('Resource not found: ${response.body}');
      case 500:
      default:
        throw ServerException(
            'Error occurred with status code: ${response.statusCode}, response: ${response.body}');
    }
  }
}
