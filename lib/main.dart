import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:udduktarbajar/webview_screen.dart';

import 'app/routes/app_pages.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
   GetStorage.init();
  runApp(
    GetMaterialApp(
      title: "Application",
     initialRoute: AppPages.INITIAL,
     getPages: AppPages.routes,
    ),
  );
}