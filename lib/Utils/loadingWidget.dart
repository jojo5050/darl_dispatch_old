
import 'package:darl_dispatch/Utils/progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget {

 late BuildContext context;

 Future<void> startLoading() async {
   print("printing loading widgget start");
   return await showDialog<void>(
     context: context,
     barrierDismissible: false,
     builder: (BuildContext context) {
       return const SimpleDialog(
         elevation: 0.0,
         backgroundColor: Colors.white, // can change this to your prefered color
         children: <Widget>[
           Center(
             child: ProgressBar(),
           )
         ],
       );
     },
   );
 }

 Future<void> stopLoading() async {
   Navigator.of(context).pop();
 }

 Future<void> showError(Object? error) async {
   ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(
       action: SnackBarAction(
         label: 'Dismiss',
         onPressed: () {
           ScaffoldMessenger.of(context).hideCurrentSnackBar();
         },
       ),
       backgroundColor: Colors.red,
       content: Text("abcdefg"),
     ),
   );
 }

}