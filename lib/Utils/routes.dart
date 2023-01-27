import 'package:darl_dispatch/Screens/company_users_screen.dart';
import 'package:darl_dispatch/Screens/drivers_on_trip_screen.dart';
import 'package:darl_dispatch/Screens/home_page.dart';
import 'package:darl_dispatch/Screens/landing_page_manager.dart';
import 'package:darl_dispatch/Screens/load_details_preview.dart';
import 'package:darl_dispatch/Screens/login_page.dart';
import 'package:darl_dispatch/Screens/payout_screen.dart';
import 'package:darl_dispatch/Screens/pickups_screen.dart';
import 'package:darl_dispatch/Screens/register_load.dart';
import 'package:darl_dispatch/Screens/report.dart';
import 'package:darl_dispatch/Screens/sign_up_page.dart';
import 'package:darl_dispatch/Screens/success_screen.dart';
import 'package:darl_dispatch/Screens/vehicles_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/general_user_dashboard':
      return MaterialPageRoute(builder: (_) => const HomePage());

    case '/landingPage_manager':
      return MaterialPageRoute(builder: (_) => const LandingPageManager());

    case '/login_page':
      return MaterialPageRoute(builder: (_) => const LoginPage());

    case '/sign_up_page':
      return MaterialPageRoute(builder: (_) => const SignUpPage());

    case '/company_users':
      return MaterialPageRoute(builder: (_) => const CompanyUsers());

    case '/vehicles':
      return MaterialPageRoute(builder: (_) => const Vehicles());

    case '/success_screen':
      return MaterialPageRoute(builder: (_) => const SuccessScreen());

    case '/register_load':
      return MaterialPageRoute(builder: (_) => const RegisterLoad());

    case '/pickups':
      return MaterialPageRoute(builder: (_) => const PickUps());

    case '/load_details':
      return MaterialPageRoute(builder: (_) => const LoadDetailsPreview());

    case '/payout':
      return MaterialPageRoute(builder: (_) => const PayOut());

    case '/drivers_on_trip':
      return MaterialPageRoute(builder: (_) => const DriversOnTrip());

      case '/report':
      return MaterialPageRoute(builder: (_) => const Report());


    default:
      return MaterialPageRoute(builder: (_) => Container());
  }
}