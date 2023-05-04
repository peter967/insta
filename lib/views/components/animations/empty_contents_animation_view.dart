import 'package:insta/views/components/animations/lottie_animation_view.dart';

import 'models/lottie_animation.dart';

class EmptyContentsAnimationVew extends LottieAnimationView {
  const EmptyContentsAnimationVew({super.key})
      : super(
          animation: LottieAnimation.empty,
        );
}
