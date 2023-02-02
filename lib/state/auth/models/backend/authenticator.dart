import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../posts/typedefs/user_id.dart';
import '../auth_result.dart';


class Authenticator {
  const Authenticator();
  User? get currentUser => FirebaseAuth.instance.currentUser;
  UserId? get userId => currentUser?.uid;

  bool get isAlreadyLoggedIn => userId != null;
  String get displayName => currentUser?.displayName ?? '';
  String get photo => currentUser?.photoURL ?? '';
  String get email => currentUser?.email ?? '';
  Future logOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }

  Future<AuthResult> loginWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    final signInAccount = await googleSignIn.signIn();
    if (signInAccount == null) {
      return AuthResult.aborted;
    }
    final googleAuth = await signInAccount.authentication;
    final oauthCredential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    try {
      await FirebaseAuth.instance.signInWithCredential(oauthCredential);
      return AuthResult.success;
    } catch (e) {
      return AuthResult.failure;
    }
  }
}