import 'package:flutter/material.dart';
import 'package:flutter_fb_lite_clone/controllers/slider_controller.dart';
import 'package:flutter_fb_lite_clone/views/Login_Screen/login_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'views/Home_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      getPages: [
        GetPage(
          name: '/login',
          page: () => LoginScreen(),
        ),
         GetPage(
          name: '/home',
          page: () => HomeScreen(),
        )
      ],
      home: const HomeScreen(),
    );
  }
}
