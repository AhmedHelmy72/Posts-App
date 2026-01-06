import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_app/posts/cubit/posts_cubit.dart';

class PostsViewBody extends StatefulWidget {
  const PostsViewBody({super.key});

  @override
  State<PostsViewBody> createState() => _PostsViewBodyState();
}

class _PostsViewBodyState extends State<PostsViewBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsCubit, PostsState>(
      builder: (context, state) {
        if (state is PostsLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is PostsSuccess) {
          return ListView.builder(
            itemCount: state.postsModel.length,
            itemBuilder: (context, index) {
              final post = state.postsModel[index];
              return Card(
                elevation: 4,
                margin: const EdgeInsets.only(bottom: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        post.body,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.thumb_up,
                                size: 18,
                                color: Colors.green,
                              ),
                              const SizedBox(width: 4),
                              Text(post.reactions.likes.toString()),
                              const SizedBox(width: 16),
                              const Icon(
                                Icons.thumb_down,
                                size: 18,
                                color: Colors.red,
                              ),
                              const SizedBox(width: 4),
                              Text(post.reactions.dislikes.toString()),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.remove_red_eye,
                                size: 18,
                                color: Colors.grey,
                              ),
                              const SizedBox(width: 4),
                              Text(post.views.toString()),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else if (state is PostsFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return Container(color: Colors.red);
        }
      },
    );
  }
}
