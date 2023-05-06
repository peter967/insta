import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:insta/state/posts/providers/user_post_provider.dart';
import 'package:insta/views/components/animations/empty_contens_with_text_animation_view.dart';
import 'package:insta/views/components/animations/loading_animation_view.dart';
import 'package:insta/views/components/post/post_grid_view.dart';
import 'package:insta/views/constants/strings.dart';

import '../../components/animations/error_animation_view.dart';

class UserPostView extends ConsumerWidget {
  const UserPostView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(userPostsProvider);
    return RefreshIndicator(
      onRefresh: () {
        ref.refresh(userPostsProvider);
        return Future.delayed(const Duration(seconds: 1));
      },
      child: posts.when(
        data: (data) {
          if (data.isEmpty) {
            return const EmptyContentsWithTextAnimationVew(
              text: Strings.youHaveNoPosts,
            );
          } else {
            return PostGridView(posts: data);
          }
        },
        error: (error, s) => const ErrorAnimationVew(),
        loading: () => const LoadingAnimationVew(),
      ),
    );
  }
}
