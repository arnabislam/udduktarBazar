import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ServeyView extends GetView {
  const ServeyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ServeyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ServeyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
