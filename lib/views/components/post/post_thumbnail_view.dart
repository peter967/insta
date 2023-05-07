import 'package:flutter/material.dart';

import '../../../state/posts/models/post.dart';

class PostThumbnailView extends StatelessWidget {
  final Posts post;
  final VoidCallback onTap;
  const PostThumbnailView({
    super.key,
    required this.post,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.network(
        post.thumbnailUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
