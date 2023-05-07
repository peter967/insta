import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:insta/state/image_upload/models/thumbnail_request.dart';
import 'package:insta/state/image_upload/providers/thumbnail_provider.dart';
import 'package:insta/views/components/animations/loading_animation_view.dart';
import 'package:insta/views/components/animations/small_error_animation_view.dart';

class FileThumbnailView extends ConsumerWidget {
  const FileThumbnailView({required this.thumbnailRequest, super.key});
  final ThumbnailRequest thumbnailRequest;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final thumb = ref.watch(thumbnailProvider(thumbnailRequest));
    return thumb.when(
      data: (imageAspectRatio) {
        return AspectRatio(
          aspectRatio: imageAspectRatio.aspectRatio,
          child: imageAspectRatio.image,
        );
      },
      error: (error, stackTrace) => const SmallErrorAnimationVew(),
      loading: () => const LoadingAnimationVew(),
    );
  }
}
