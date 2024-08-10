
import 'package:chapter_getx_ui/CounterApp/View/Detail.dart';
import 'package:chapter_getx_ui/CounterApp/View/Home.dart';
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
        GetPage(name: '/', page: () => HomePage(),transition: Transition.rightToLeft),
        GetPage(name: '/det', page: () => DetailScreen(),transition: Transition.rightToLeft)
      ],
    );
  }
}

