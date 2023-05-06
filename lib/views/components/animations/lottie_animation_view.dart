// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'models/lottie_animation.dart';

class LottieAnimationView extends StatelessWidget {
  const LottieAnimationView({
    Key? key,
    required this.animation,
    this.repeat = true,
    this.revers = false,
  }) : super(key: key);
  final LottieAnimation animation;
  final bool repeat;
  final bool revers;
  @override
  Widget build(BuildContext context) => Lottie.asset(
        animation.fullPath,
        repeat: repeat,
        reverse: revers,
      );
}

extension GetFullPath on LottieAnimation {
  String get fullPath => 'assets/animations/$name.json';
}
