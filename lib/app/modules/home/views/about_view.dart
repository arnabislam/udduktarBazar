import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AboutView extends GetView {
  const AboutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AboutView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AboutView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
