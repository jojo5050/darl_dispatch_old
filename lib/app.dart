import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:darl_dispatch/Providers/authProvider.dart';
import 'package:darl_dispatch/AuthManagers/providers.dart';
import 'package:darl_dispatch/Models/user.dart';
import 'package:darl_dispatch/Screens/splash_screen.dart';
import 'package:darl_dispatch/Utils/localstorage.dart';
import 'package:darl_dispatch/Utils/routes.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'ConstantHelper/colors.dart';
import 'Screens/Chat/chat_list_provider.dart';



class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
 // late final SharedPreferences prefs;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseStorage firebaseStorage = FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider<AuthProvider>(
          create: (_) => AuthProvider()),

        Provider<ChatProvider>(
          create: (_) => ChatProvider(
          //  prefs: this.prefs,
            firebaseFirestore: this.firebaseFirestore,
            firebaseStorage: this.firebaseStorage,
          ),
        ),
        Provider<ChatListProvider>(
          create: (_) => ChatListProvider(
            //  prefs: this.prefs,
            firebaseFirestore: this.firebaseFirestore,
          ),
        ),

      ],
      child: MaterialApp(
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
