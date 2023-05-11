import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:insta/state/image_upload/notifiers/image_uploade_notifier.dart';
import 'package:insta/state/image_upload/typedef/is_loading.dart';

final imageUploaderProvider =
    StateNotifierProvider<ImageUploadNotifier, IsLoading>(
  (ref) => ImageUploadNotifier(),
);
