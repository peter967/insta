import 'package:insta/views/components/animations/lottie_animation_view.dart';

import 'models/lottie_animation.dart';

class SmallErrorAnimationVew extends LottieAnimationView {
  const SmallErrorAnimationVew({super.key})
      : super(
          animation: LottieAnimation.smallError,
        );
}
