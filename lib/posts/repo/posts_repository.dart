import 'package:posts_app/core/services/api_service.dart';
import 'package:posts_app/posts/model/posts_model.dart';

class PostsRepository {
  final ApiService apiService = ApiService();

  Future<List<PostsModel>> getPosts() async {
    final data = await apiService.getPosts();
    return (data).map((e) => PostsModel.fromJson(e)).toList();
  }
}
