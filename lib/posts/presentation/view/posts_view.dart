import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_app/core/constants/constant.dart';
import 'package:posts_app/posts/cubit/posts_cubit.dart';
import 'package:posts_app/posts/presentation/view/widgets/posts_view_body.dart';
import 'package:posts_app/posts/repo/posts_repository.dart';

class PostsView extends StatelessWidget {
  const PostsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => PostsCubit(PostsRepository())..getPosts(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorziontalPadding),
            child: const PostsViewBody(),
          ),
        ),
      ),
    );
  }
}
