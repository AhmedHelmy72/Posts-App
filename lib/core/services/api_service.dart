import 'package:dio/dio.dart';
import 'package:posts_app/core/constants/api_url.dart';

class ApiService {
  final dio = Dio();

  Future<List<dynamic>> getPosts() async {
    try {
      final response = await dio.get(ApiUrls.posts);
      return response.data;
    } catch (e) {
      throw Exception('Failed to fetch posts');
    }
  }
}
