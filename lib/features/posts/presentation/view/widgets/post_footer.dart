import 'package:flutter/material.dart';
import 'package:posts_app/features/posts/model/posts_model.dart';

class PostFooter extends StatelessWidget {
  final PostsModel post;

  const PostFooter({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.thumb_up, size: 18, color: Colors.green),
            const SizedBox(width: 4),
            Text(post.reactions.likes.toString()),
            const SizedBox(width: 16),
            const Icon(Icons.thumb_down, size: 18, color: Colors.red),
            const SizedBox(width: 4),
            Text(post.reactions.dislikes.toString()),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.remove_red_eye, size: 18, color: Colors.grey),
            const SizedBox(width: 4),
            Text(post.views.toString()),
          ],
        ),
      ],
    );
  }
}
