import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_app/features/posts/cubit/posts_cubit.dart';
import 'package:posts_app/features/posts/presentation/view/widgets/post_card.dart';

class PostsViewBody extends StatefulWidget {
  const PostsViewBody({super.key});

  @override
  State<PostsViewBody> createState() => _PostsViewBodyState();
}

class _PostsViewBodyState extends State<PostsViewBody> {
  final Set<int> _expandedIndexes = {};

  void _toggleExpanded(int index) {
    setState(() {
      _expandedIndexes.contains(index)
          ? _expandedIndexes.remove(index)
          : _expandedIndexes.add(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsCubit, PostsState>(
      builder: (context, state) {
        if (state is PostsLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is PostsFailure) {
          return Center(child: Text(state.errMessage));
        }
        if (state is PostsSuccess) {
          return ListView.builder(
            itemCount: state.postsModel.length,
            itemBuilder: (context, index) {
              return PostCard(
                post: state.postsModel[index],
                isExpanded: _expandedIndexes.contains(index),
                onTap: () => _toggleExpanded(index),
              );
            },
          );
        }
        return const SizedBox();
      },
    );
  }
}
