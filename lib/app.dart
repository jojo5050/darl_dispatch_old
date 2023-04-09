import 'package:darl_dispatch/Providers/authProvider.dart';
import 'package:darl_dispatch/AuthManagers/providers.dart';
import 'package:darl_dispatch/Models/user.dart';
import 'package:darl_dispatch/Screens/UsersPages/company_users_screen.dart';
import 'package:darl_dispatch/LandingPageManagers/dispatcher_landing_page_manager.dart';
import 'package:darl_dispatch/Screens/onboarding_page.dart';
import 'package:darl_dispatch/Screens/UsersPages/register_load.dart';
import 'package:darl_dispatch/Screens/splash_screen.dart';
import 'package:darl_dispatch/Screens/success_screen.dart';
import 'package:darl_dispatch/Utils/horizontalProgressBar.dart';
import 'package:darl_dispatch/Utils/localstorage.dart';
import 'package:darl_dispatch/Utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'ConstantHelper/colors.dart';
import 'Screens/UsersPages/pickups_screen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: Providers.getProvider,
      builder: (_, __) => MaterialApp(
        title: "Darl Dispatch",
        theme: ThemeData(
           fontFamily: 'Interfont',
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: AppColors.primary,
          ),
        ),

        home: ResponsiveSizer(
          builder: (context, orientation, screenType) {
            return const SplashScreen();

         /*   FutureBuilder(
                future: fetchConfirmationData(context),
                builder: (buildContext, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data != null) {
                      // if(snapshot.data["token"] != null)
                      if (checkAuthenticated(snapshot.data)) {
                        return LandingPageManager();
                      }
                    }
                    return const OnboardingPage();
                  } else {
                    return SplashScreen();

                  }
                }

                );*/

          },
        ),
        initialRoute: "/",
        routes: {
          "/first": (final context) => const PickUps(),
          "/second": (final context) => const RegisterLoad(),
          "/third": (final context) => const CompanyUsers(),

        },
        onGenerateRoute: generateRoute,
      ),
    );
  }

  Future<Map<String, dynamic>> fetchConfirmationData(
      BuildContext context) async {
    return await Future.delayed(const Duration(seconds: 3), () async {
      String? accessToken = "";
      String uRole = "";
      bool isAuthenticated = false;
      User user = User();

      try {
        dynamic _userinfo = await LocalStorage().fetch("user_info");
        accessToken = await (LocalStorage().fetch("token")) ?? "";
        uRole = await (LocalStorage().fetch("role_key")) ?? "";

        if (_userinfo != null) {
          user = User.fromJson(Map<String, dynamic>.from(_userinfo));
          context.read<AuthProvider>().user =
          Map<String, dynamic>.from(_userinfo);
        }
      } catch (e, str) {
        debugPrint("$e");
        debugPrint("StackTrace$str");
      }

      return {"token": accessToken, "user": user, "role_key": uRole};
    });
  }

  bool checkAuthenticated(data) {
    if (data["token"] != null &&
        data["user"] != null &&
        //   data["role_key"] == "celeb" &&
        data["token"] != "" &&
        data["user"] != "") return true;

    return false;
  }
}
