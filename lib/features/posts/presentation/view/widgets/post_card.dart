import 'package:flutter/material.dart';
import 'package:posts_app/features/posts/model/posts_model.dart';
import 'package:posts_app/features/posts/presentation/view/widgets/post_footer.dart';

class PostCard extends StatelessWidget {
  final PostsModel post;
  final bool isExpanded;
  final VoidCallback onTap;

  const PostCard({
    super.key,
    required this.post,
    required this.isExpanded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.only(bottom: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
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
              AnimatedCrossFade(
                firstChild: _collapsedBody(),
                secondChild: _expandedBody(),
                crossFadeState: isExpanded
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: const Duration(milliseconds: 250),
              ),
              const SizedBox(height: 15),
              PostFooter(post: post),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _collapsedBody() => Text(
    post.body,
    maxLines: 3,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(color: Colors.grey.shade700),
  );

  Widget _expandedBody() =>
      Text(post.body, style: TextStyle(color: Colors.grey.shade700));
}
