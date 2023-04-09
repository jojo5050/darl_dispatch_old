import 'package:darl_dispatch/Screens/UsersPages/active_loads_preview.dart';
import 'package:darl_dispatch/Screens/UsersPages/completed_loads_page.dart';
import 'package:darl_dispatch/Screens/UsersPages/home_page.dart';
import 'package:darl_dispatch/Screens/UsersPages/userProfile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DispatcherLandingPageManager extends StatefulWidget {
  const DispatcherLandingPageManager({Key? key}) : super(key: key);

  @override
  _DispatcherLandingPageManagerState createState() => _DispatcherLandingPageManagerState();
}

class _DispatcherLandingPageManagerState extends State<DispatcherLandingPageManager> {

  final tabController = PersistentTabController(initialIndex: 0);


  @override
  Widget build(BuildContext context) {
    /*return WillPopScope(
      onWillPop: willpopControl,
      child:*/ return PersistentTabView(context,

        controller: tabController,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.indigo,
        resizeToAvoidBottomInset: true,
        popActionScreens: PopActionScreensType.all,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        bottomScreenMargin: 0,
        decoration: NavBarDecoration(
            gradient: const LinearGradient(colors: [Colors.lightBlueAccent, Colors.indigo],
                begin: Alignment.centerLeft, end: Alignment.centerRight
            ),
            borderRadius: BorderRadius.circular(5)),
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),

      );
   // );
  }

  List<Widget> _buildScreens() {
    return [
        HomePage(),
        ActiveLoadPreview(),
        CompletedLoadsPage(),
        UserProfilePage()
    ];
  }

 List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home, size: 30,),
        title: "Home", textStyle: const TextStyle(fontWeight: FontWeight.bold),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.black,),

      PersistentBottomNavBarItem(
        icon: const Icon(Icons.local_shipping, size: 30,),
        title: "Active",
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.black,
        /* routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: "/",
        routes: {
        "/first": (final context) => const FirstScreen(),
        "/second": (final context) => const SecondScreen(),
        },
          ),*/
      ),

      PersistentBottomNavBarItem(
        icon: const Icon(Icons.check_circle, size: 30,),
        title: "Delivered", textStyle: const TextStyle(fontWeight: FontWeight.bold),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.black,
        /* routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: "/",
        routes: {
          "/first": (final context) => const FirstScreen(),
          "/second": (final context) => const SecondScreen(),
        },
      ),*/
      ),

      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person, size: 30,),
        title: "Profile", textStyle: const TextStyle(fontWeight: FontWeight.bold),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.black,
        /* routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: "/",
        routes: {
          "/first": (final context) => const FirstScreen(),
          "/second": (final context) => const SecondScreen(),
        },
      ),*/
      ),

    ];
 }

  Future<bool> willpopControl() async {
    return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        //  title: new Text('Are you sure?'),
        content: new Text('Do you want to exit the App'),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () => exitApp(),
                child: new Text('Yes'),
              ),
            ],
          ),
        ],
      ),
    )) ??
        false;
  }

  exitApp() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    });

  }
}
