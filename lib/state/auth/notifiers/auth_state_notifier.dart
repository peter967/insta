import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../posts/typedefs/user_id.dart';
import '../../user/backend/user_info_storage.dart';
import '../models/auth_result.dart';
import '../models/auth_state.dart';
import '../models/backend/authenticator.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  final _authenticator = const Authenticator();
 final _userInfoStorage = const UserInfoStorage();
  AuthStateNotifier() : super(const AuthState.unknown()) {
    if (_authenticator.isAlreadyLoggedIn) {
      state = AuthState(
        result: AuthResult.success,
        isLoading: false,
        userId: _authenticator.userId,
      );
    }
  }
  Future logOut() async {
    state = state.copiedWithIsLoading(true);
    await _authenticator.logOut();
    state = const AuthState.unknown();
  }

  Future loginWithGoogle() async {
    state = state.copiedWithIsLoading(true);
    final result = await _authenticator.loginWithGoogle();
    final userId = _authenticator.userId;
    if (result == AuthResult.success && userId != null) {
      await saveUserInfo(userId: userId);
    }
    state = AuthState(
      result: result,
      isLoading: false,
      userId: userId,
    );
  }

  Future saveUserInfo({required UserId userId}) =>
      _userInfoStorage.saveUserInfo(
        userId: userId,
        displayName: _authenticator.displayName,
        email: _authenticator.email,
      );
}
