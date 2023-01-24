import 'package:darl_dispatch/AuthManagers/authProvider.dart';
import 'package:darl_dispatch/AuthManagers/providers.dart';
import 'package:darl_dispatch/Models/user.dart';
import 'package:darl_dispatch/Screens/general_user_dashboard.dart';
import 'package:darl_dispatch/Screens/onboarding_page.dart';
import 'package:darl_dispatch/Utils/horizontalProgressBar.dart';
import 'package:darl_dispatch/Utils/localstorage.dart';
import 'package:darl_dispatch/Utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'Constants/colors.dart';

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
            return FutureBuilder(
                future: fetchConfirmationData(context),
                builder: (buildContext, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data != null) {
                      // if(snapshot.data["token"] != null)
                      if (checkAuthenticated(snapshot.data)) {
                        return GeneralUserDashboard();
                      }
                    }
                    return const OnboardingPage();
                  } else {
                    return Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(height: 10.h,),
                          Center(
                              child: Image.asset("assets/images/darllogo.png")),

                          SizedBox(height: 20.h,),
                          Text("Loading...", style: TextStyle(
                              color: Colors.black, fontSize: 15.sp,
                              decoration: TextDecoration.none),),
                          SizedBox(height: 1.h,),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: const HorizontalProgressBar(),
                          ),
                        ],
                      ),

                    );
                  }
                }

                );

          },
        ),
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
