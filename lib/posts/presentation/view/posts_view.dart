import 'package:flutter/material.dart';
import 'package:posts_app/posts/presentation/view/widgets/posts_view_body.dart';

class PostsView extends StatelessWidget {
  const PostsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const PostsViewBody());
  }
}
