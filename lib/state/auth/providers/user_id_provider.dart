import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:insta/state/auth/providers/auth_state_provider.dart';
import 'package:insta/state/posts/typedefs/user_id.dart';

final userIdProvider = Provider<UserId?>(
  (ref) => ref.watch(authStateProvider).userId,
);
