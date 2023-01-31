import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TermsconditionView extends GetView {
  const TermsconditionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TermsconditionView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TermsconditionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
