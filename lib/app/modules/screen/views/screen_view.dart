import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/screen_controller.dart';

class ScreenView extends GetView<ScreenController> {
  const ScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
