import 'package:insta/views/components/animations/lottie_animation_view.dart';

import 'models/lottie_animation.dart';

class LoadingContentsAnimationVew extends LottieAnimationView {
  const LoadingContentsAnimationVew({super.key})
      : super(
          animation: LottieAnimation.loading,
        );
}
