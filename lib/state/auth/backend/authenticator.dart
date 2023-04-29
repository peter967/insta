import 'package:firebase_auth/firebase_auth.dart';
import 'package:insta/state/posts/typedes/user_id.dart';

class Authenticator {
  UserId? get userId => FirebaseAuth.instance.currentUser?.uid;
}
