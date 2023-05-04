import 'package:flutter/material.dart';
import 'package:insta/views/components/animations/empty_contents_animation_view.dart';

class EmptyContentsWithTextAnimationVew extends StatelessWidget {
  final String text;
  const EmptyContentsWithTextAnimationVew({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text(
              text,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white54,
                  ),
            ),
          ),
          const EmptyContentsAnimationVew(),
        ],
      ),
    );
  }
}
