import 'package:darl_dispatch/AuthManagers/authProvider.dart';
import 'package:darl_dispatch/Models/user.dart';
import 'package:darl_dispatch/Screens/UsersPages/landing_page_manager.dart';
import 'package:darl_dispatch/Utils/localstorage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Screens/onboarding_page.dart';

class AuthChecker extends StatefulWidget {
  const AuthChecker({Key? key}) : super(key: key);

  @override
  State<AuthChecker> createState() => _AuthCheckerState();
}

class _AuthCheckerState extends State<AuthChecker> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchConfirmationData(context),
        builder: (builContext, snapShot){
             if(snapShot.hasData){
               if(snapShot.data != null){
                 // if(snapshot.data["token"] != null)

                 if (checkAuthenticated(snapShot.data)) {
                   return LandingPageManager();
                 }
                 /*if (checkAuthenticatedDriver(snapShot.data)) {
                   return LandingPageManager();
                 }*/
                // return OnboardingPage();
               }
             }
               return OnboardingPage();;


        });
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
