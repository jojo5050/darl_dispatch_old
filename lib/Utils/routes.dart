import 'package:darl_dispatch/Screens/general_user_dashboard.dart';
import 'package:darl_dispatch/Screens/login_page.dart';
import 'package:darl_dispatch/Screens/sign_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/general_user_dashboard':
      return MaterialPageRoute(builder: (_) => const GeneralUserDashboard());

    case '/login_page':
      return MaterialPageRoute(builder: (_) => const LoginPage());

    case '/sign_up_page':
      return MaterialPageRoute(builder: (_) => const SignUpPage());

    default:
      return MaterialPageRoute(builder: (_) => Container());
  }
}