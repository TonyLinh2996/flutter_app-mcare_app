import 'package:flutter/material.dart';
import 'package:m_care_mobile_app/ui/modules/pages/auth/screens/sign_in_page.dart';
import 'package:m_care_mobile_app/ui/modules/pages/auth/screens/user_acount_info_page.dart';

import '../../modules/pages/auth/screens/sign_up_page.dart';
import '../../modules/pages/home/screens/add_device_page.dart';
import '../../modules/pages/home/screens/devices_control_page.dart';
import '../../modules/pages/home/screens/splash_page.dart';

class Routers {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
		case 'SplashPage':
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case 'SigninPage':
        return MaterialPageRoute(builder: (context) => const SignInPage());
      case 'SignupPage':
        return MaterialPageRoute(builder: (context) => const SignUpPage());
      case 'DevicesControlPage':
        return MaterialPageRoute(
            builder: (context) => const DevicesControlPage());
      case 'UserAcountInfoPage':
        return MaterialPageRoute(
            builder: (context) => const UserAcountInfoPage());
      case 'AddDevicePage':
        return MaterialPageRoute(builder: (context) => const AddDevicePage());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
