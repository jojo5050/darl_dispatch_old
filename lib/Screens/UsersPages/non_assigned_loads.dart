import 'package:flutter/material.dart';

class NonAssignedLoads extends StatefulWidget {
  const NonAssignedLoads({Key? key}) : super(key: key);

  @override
  State<NonAssignedLoads> createState() => _NonAssignedLoadsState();
}

class _NonAssignedLoadsState extends State<NonAssignedLoads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text("Active", style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,),

      body: Column(children: [


      ],),

    );
  }
}
