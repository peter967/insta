import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 40,
        ),
        Divider(),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
