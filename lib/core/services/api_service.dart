import 'package:dio/dio.dart';
import 'package:posts_app/core/constants/api_url.dart';

final dio = Dio();

class ApiService {
  Future<List<Map<String, dynamic>>> getPosts() async {
    final response = await dio.get(ApiUrls.posts);

    if (response.data is List) {
      return List<Map<String, dynamic>>.from(response.data);
    } else if (response.data is Map) {
      return List<Map<String, dynamic>>.from(response.data['posts']);
    } else {
      throw Exception('Unexpected response format');
    }
  }
}
