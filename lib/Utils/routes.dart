import 'package:darl_dispatch/Screens/DriversPages/driver_landing_manager.dart';
import 'package:darl_dispatch/Screens/UsersPages/company_users_screen.dart';
import 'package:darl_dispatch/Screens/UsersPages/drivers_on_trip_screen.dart';
import 'package:darl_dispatch/Screens/UsersPages/home_page.dart';
import 'package:darl_dispatch/Screens/UsersPages/landing_page_manager.dart';
import 'package:darl_dispatch/Screens/UsersPages/payout_screen.dart';
import 'package:darl_dispatch/Screens/UsersPages/pickups_screen.dart';
import 'package:darl_dispatch/Screens/UsersPages/load_details_preview.dart';
import 'package:darl_dispatch/Screens/login_page.dart';
import 'package:darl_dispatch/Screens/UsersPages/register_load.dart';
import 'package:darl_dispatch/Screens/UsersPages/report.dart';
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
    case '/driver_landing_manager':
      return MaterialPageRoute(builder: (_) => const DriverLandingManager());

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