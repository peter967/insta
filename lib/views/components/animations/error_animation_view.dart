import 'package:insta/views/components/animations/lottie_animation_view.dart';

import 'models/lottie_animation.dart';

class ErrorAnimationVew extends LottieAnimationView {
  const ErrorAnimationVew({super.key})
      : super(
          animation: LottieAnimation.error,
        );
}
