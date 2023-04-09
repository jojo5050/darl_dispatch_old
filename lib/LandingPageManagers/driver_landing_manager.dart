
import 'package:darl_dispatch/Screens/DriversPages/driver_home.dart';
import 'package:darl_dispatch/Screens/DriversPages/driver_profile.dart';
import 'package:darl_dispatch/Screens/UsersPages/completed_loads_page.dart';
import 'package:darl_dispatch/Screens/UsersPages/home_page.dart';
import 'package:darl_dispatch/Screens/UsersPages/userProfile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../Screens/DriversPages/dr_loadDelivered_preview.dart';

class DriverLandingManager extends StatefulWidget {
  const DriverLandingManager({Key? key}) : super(key: key);

  @override
  _DriverLandingManagerState createState() => _DriverLandingManagerState();
}

class _DriverLandingManagerState extends State<DriverLandingManager> {
   final tabController = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(context,

        controller: tabController,
        screens: _buildScreens(),
        items: _navBarsItems(),
        backgroundColor: Colors.indigo,
        resizeToAvoidBottomInset: true,
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

  }

  List<Widget> _buildScreens() {
    return [
      DriverHome(),
      DriverLoadDeliveredPreview(),
      DriverProfile()
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

}
