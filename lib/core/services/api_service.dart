import 'package:dio/dio.dart';
import 'package:posts_app/core/constants/api_url.dart';

final dio = Dio();

class ApiService {
  Future<List<Map<String,dynamic>>> getPosts() async {
    try {
      final response = await dio.get(ApiUrls.posts);
      return response.data;
    } catch (e) {
      throw Exception('Failed to fetch posts');
    }
  }
}
