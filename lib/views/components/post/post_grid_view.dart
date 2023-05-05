import 'package:flutter/material.dart';
import 'package:insta/views/components/post/post_thumbnail_view.dart';

import '../../../state/posts/typedes/models/post.dart';

class PostGridView extends StatelessWidget {
  final Iterable<Posts> posts;
  const PostGridView({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts.elementAt(index);
        return PostThumbnailView(
          post: post,
          onTap: () {},
        );
      },
    );
  }
}
