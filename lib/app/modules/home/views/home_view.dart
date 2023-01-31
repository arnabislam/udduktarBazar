import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:udduktarbajar/app/modules/home/views/about_view.dart';
import 'package:udduktarbajar/app/modules/home/views/companyprofile_view.dart';

import 'package:udduktarbajar/app/modules/home/views/privacy_view.dart';
import 'package:udduktarbajar/app/modules/home/views/termscondition_view.dart';

import 'package:udduktarbajar/app/modules/screen/views/login_view.dart';
import 'package:udduktarbajar/webview_screen.dart';

import '../controllers/home_controller.dart';
import 'drawer_header_view.dart';

class HomeView extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor:  Colors.deepPurpleAccent,
          title: const Text('UduuktarBazar',style: TextStyle(fontSize: 25),),
          centerTitle: true,
        ),
        drawer: Drawer(

          child: ListView(

            padding: EdgeInsets.zero,
            children: [

              Column(
                children: [
                  DrawerHeaderView(),
                  NavItem(),
                ],
              ),
            ],
          ),
        ),

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 100, left: 25, right: 25, bottom: 25),
              child: GestureDetector(
                onTap: () {
                 // Get.to(WebViewScreen(urlWeb: 'https://www.cricbuzz.com/', appBarName: 'trtr'));
                  Get.to(WebViewScreen(urlWeb: 'https://shop.uddoktarbazar.com/', appBarName: 'Shopping',));
                  },
                child: Container(
                  //margin: EdgeInsets.all(25),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/shop.jpg'),
                        radius: 50,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "SHOPPING",
                        style: TextStyle(fontSize: 45),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 25, right: 25, bottom: 8),
              child: GestureDetector(
                onTap: (){
    Get.to(const WebViewScreen(urlWeb: 'https://courier.uddoktarbazar.com/staff', appBarName: 'Courier',));
                },
                child: const Image(
                  image: AssetImage('images/courier.jpg'),
                ),
              ),
            ),
            // Image(image: Image.asset('images/courier.jpg')),
            Container(
              margin: EdgeInsets.all(25),
              decoration: const BoxDecoration(
                  color: Color(0xFFEB1555),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/topup.jpg'),
                    radius: 50,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                      onTap: () {

                        Get.to(const WebViewScreen(urlWeb: 'https://topup.uddoktarbazar.com/login', appBarName: 'TopUp',));
                      },
                      child: Text(
                        "TOPUP",
                        style: TextStyle(fontSize: 45),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 25),
              decoration: const BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/servey.jpg'),
                    radius: 50,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.to(const WebViewScreen(urlWeb: 'https://survey.uddoktarbazar.com/', appBarName: 'Survey',));
                      },
                      child: Text(
                        "SERVEY",
                        style: TextStyle(fontSize: 45,color: Colors.white),
                      )),
                ],
              ),
            ),
          ],
        ));
  }
}

NavItem() {
  return Material(

    child: Column(

      children: [
        InkWell(
          onTap: () {
            Get.to(AboutView());
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(

                  flex: 1,
                  child: Icon(
                    Icons.table_chart_sharp,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(

                      "About",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Get.to(CompanyprofileView());
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.person,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      "Company Profile",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Get.to(PrivacyView());
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.privacy_tip_sharp,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Get.to(TermsconditionView());
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.note_add_sharp,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      "Terms & Condition",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Get.to(LoginView());
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.logout_outlined,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Get.defaultDialog(
                titleStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                title: "Are you sure you \n want to exit",
                content: Container(
                  margin: EdgeInsets.only(left: 45, top: 15),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          )),
                      SizedBox(
                        width: 25,
                      ),
                      TextButton(
                          onPressed: () {
                            closeAppUsingExit();
                          },
                          child: Text('Ok',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15)))
                    ],
                  ),
                ));
            //closeAppUsingExit();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.exit_to_app,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      "Exit App",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ))
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

void closeAppUsingExit() {
  exit(0);
}

// alertDialog() {
//   void closeAppUsingExit() {
//     exit(0);
//   }
//
//   AlertDialog(
//     title: const Text('AlertDialog Title'),
//     content: const Text('AlertDialog description'),
//     actions: <Widget>[
//       TextButton(
//         onPressed: () => Get.back(),
//         child: const Text('Cancel'),
//       ),
//       TextButton(
//         onPressed: () => Get.to(closeAppUsingExit),
//         child: 