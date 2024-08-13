
import 'package:chapter_getx_ui/CRUD_App/View/Splash.dart';
import 'package:chapter_getx_ui/CRUD_App/View/home.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      getPages: [
        GetPage(name: '/', page: () => SplashScreen(),transition: Transition.circularReveal),
        GetPage(name: '/home', page: () => HomeCRUDScreen(),transition: Transition.rightToLeft),

      ],
    );
  }
}

