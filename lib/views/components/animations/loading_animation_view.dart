import 'package:insta/views/components/animations/lottie_animation_view.dart';

import 'models/lottie_animation.dart';

class LoadingAnimationVew extends LottieAnimationView {
  const LoadingAnimationVew({super.key})
      : super(
          animation: LottieAnimation.loading,
        );
}
