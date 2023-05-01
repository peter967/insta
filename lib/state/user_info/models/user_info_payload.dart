import 'dart:collection';

import 'package:flutter/foundation.dart';

import '../../constants/firebase_fild_name.dart';
import '../../posts/typedes/user_id.dart';

@immutable
class UserInfoPayload extends MapView<String, String> {
  UserInfoPayload({
    required UserId userId,
    required String? displayName,
    required String? email,
  }) : super(
          {
            FirebaseFieldName.userId: userId,
            FirebaseFieldName.displayName: displayName ?? '',
            FirebaseFieldName.email: email ?? '',
          },
        );

  @override
  String? operator;
}
