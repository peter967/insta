import 'package:insta/views/components/animations/lottie_animation_view.dart';

import 'models/lottie_animation.dart';

class ErrorContentsAnimationVew extends LottieAnimationView {
  const ErrorContentsAnimationVew({super.key})
      : super(
          animation: LottieAnimation.error,
        );
}
