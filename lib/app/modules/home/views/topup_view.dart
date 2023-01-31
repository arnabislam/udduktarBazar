import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TopupView extends GetView {
  const TopupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TopupView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TopupView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
