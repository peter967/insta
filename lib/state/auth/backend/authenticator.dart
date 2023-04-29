import 'package:firebase_auth/firebase_auth.dart';
import 'package:insta/state/posts/typedes/user_id.dart';

class Authenticator {
  User? get currentUser => FirebaseAuth.instance.currentUser;
  UserId? get userId => currentUser?.uid;
  bool get isAlreadyLoggedIn => userId != null;
  String get displayNAme => currentUser?.displayName ?? '';
}
