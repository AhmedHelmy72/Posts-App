import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:posts_app/posts/model/posts_model.dart';
import 'package:posts_app/posts/repo/posts_repository.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit(this.postsRepository) : super(PostsInitial());
  final PostsRepository postsRepository;

  Future<void> getPosts() async {
    emit(PostsLoading());
    try {
      final posts = await postsRepository.getPosts();
      emit(PostsSuccess(postsModel: posts));
    } catch (e) {
      emit(PostsFailure(errMessage: e.toString()));
    }
  }
}
