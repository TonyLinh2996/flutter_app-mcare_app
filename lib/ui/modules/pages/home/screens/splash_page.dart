// ignore: import_of_legacy_library_into_null_safe
import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:m_care_mobile_app/ui/modules/pages/auth/screens/sign_in_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplash(
        duration: 2000,
        imagePath: 'assets/images/m_Care.png',
        home:  const SignInPage(),
        type: AnimatedSplashType.StaticDuration,
    );
  }
}
