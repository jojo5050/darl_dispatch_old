

import 'package:darl_dispatch/AuthManagers/authProvider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class Providers {

  static List<SingleChildWidget> getProvider =  [

    ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider()),

  ];

}