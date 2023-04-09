

import 'package:darl_dispatch/Providers/authProvider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../Providers/accountant_provider.dart';
import '../Providers/admin_provider.dart';
import '../Providers/dispatcher_provider.dart';
import '../Providers/driver_provider.dart';

class Providers {

  static List<SingleChildWidget> getProvider =  [

    ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider()),
    ChangeNotifierProvider<AdminProvider>(create: (_) => AdminProvider()),
    ChangeNotifierProvider<DriverProvider>(create: (_) => DriverProvider()),
    ChangeNotifierProvider<DespatchProvider>(create: (_) => DespatchProvider()),
    ChangeNotifierProvider<AccountantProvider>(create: (_) => AccountantProvider()),

  ];

}