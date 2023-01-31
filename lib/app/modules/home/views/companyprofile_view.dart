import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CompanyprofileView extends GetView {
  const CompanyprofileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CompanyprofileView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CompanyprofileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
