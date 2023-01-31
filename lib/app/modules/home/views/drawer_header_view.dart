import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DrawerHeaderView extends GetView {
  const DrawerHeaderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[700],
      width: double.infinity,
      height: 300,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(child: CircleAvatar(backgroundImage:AssetImage('images/ball5.png'),radius: 100,),

            margin: EdgeInsets.only(bottom: 10),
            height: 70,

          ),
           Text(
            "UdduktarBAzar",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
