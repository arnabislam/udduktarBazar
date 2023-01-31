import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SplashScreenView extends GetView {

  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: const Text('SplashScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SplashScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
