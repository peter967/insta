import 'package:insta/views/components/animations/lottie_animation_view.dart';

import 'models/lottie_animation.dart';

class DataAnimationView extends LottieAnimationView {
  const DataAnimationView({super.key})
      : super(
          animation: LottieAnimation.dataNotFound,
        );
}
