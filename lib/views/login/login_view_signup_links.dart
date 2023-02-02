import 'package:flutter/material.dart';
import 'package:insta/constants/strings.dart';
import 'package:insta/views/components/rich_text/base_text.dart';
import 'package:insta/views/components/rich_text/rich_text_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginViewSignUpLink extends StatelessWidget {
  const LoginViewSignUpLink({super.key});

  @override
  Widget build(BuildContext context) {
    return RichTextWidget(
      styleForAll: Theme.of(context).textTheme.titleMedium?.copyWith(
            height: 1.5,
          ),
      texts: [
        const BaseText(
          text: Strings.dontHaveAnAccount,
        ),
        const BaseText(
          text: Strings.signUpOn,
        ),
        BaseText.link(
          onTapped: () {
            launchUrl(
              Uri.parse(Strings.googleSignupUrl),
            );
          },
          text: Strings.google,
        ),
      ],
    );
  }
}
