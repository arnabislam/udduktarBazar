import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CourierView extends GetView {
  const CourierView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CourierView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CourierView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
