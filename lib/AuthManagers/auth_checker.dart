import 'package:darl_dispatch/Providers/authProvider.dart';
import 'package:darl_dispatch/LandingPageManagers/accountant_landing_page_manager.dart';
import 'package:darl_dispatch/LandingPageManagers/admin_landing_page_manager.dart';
import 'package:darl_dispatch/LandingPageManagers/driver_landing_manager.dart';
import 'package:darl_dispatch/Models/user.dart';
import 'package:darl_dispatch/LandingPageManagers/dispatcher_landing_page_manager.dart';
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
    return FutureBuilder<dynamic>(
        future: fetchConfirmationData(context),
        builder: (builContext, snapShot){
             if(snapShot.hasData){
               if(snapShot.data["token"] != null){
                 if (checkAuthenticatedDispatcher(snapShot.data)) {
                   return const DispatcherLandingPageManager();
                 }
                 if (checkAuthenticatedDriver(snapShot.data)) {
                   return const DriverLandingManager();
                 }
                 if (checkAuthenticatedAccountant(snapShot.data)) {
                   return const AccountantLandingPageManager();
                 }
                 if (checkAuthenticatedAdmin(snapShot.data)) {
                   return const AdminLandingPageManager();
                 }

               }
             }
               return const OnboardingPage();


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
        dynamic _userinfo = await LocalStorage().fetch("userData");
        accessToken = await (LocalStorage().fetch("token")) ?? "";
        uRole = await (LocalStorage().fetch("roleKey")) ?? "";

        if (_userinfo != null) {
          user = User.fromJson(Map<String, dynamic>.from(_userinfo));
          context.read<AuthProvider>().user =
          Map<String, dynamic>.from(_userinfo);
        }
      } catch (e, str) {
        debugPrint("$e");
        debugPrint("StackTrace$str");
      }

      return {"token": accessToken, "user": user, "roleKey": uRole};
    });
  }

  bool checkAuthenticatedDispatcher(data) {
    if (data["token"] != null &&
        data["user"] != null &&
        data["roleKey"] == "Despatcher" &&
        data["token"] != "" &&
        data["user"] != "") return true;

    return false;

  }

  bool checkAuthenticatedDriver(data) {
    if (data["token"] != null &&
        data["user"] != null &&
        data["roleKey"] == "Driver" &&
        data["token"] != "" &&
        data["user"] != "") return true;

    return false;

  }

  bool checkAuthenticatedAccountant(data) {
    if (data["token"] != null &&
        data["user"] != null &&
        data["roleKey"] == "Accountant" &&
        data["token"] != "" &&
        data["user"] != "") return true;

    return false;

  }

  bool checkAuthenticatedAdmin(data) {
    if (data["token"] != null &&
        data["user"] != null &&
        data["roleKey"] == "Admin" &&
        data["token"] != "" &&
        data["user"] != "") return true;

    return false;

  }
}
