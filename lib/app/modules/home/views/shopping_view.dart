import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ShoppingView extends GetView {
 var data = Get.arguments;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShoppingView'),
        centerTitle: true,
      ),
      body: Center(


        child: TextButton(onPressed: (){}, child: Column(
          children: [
            Text("${data[0]}"),
            Text("${data[1]}"),
          ],
        ),),
      ),
    );
  }
}
