import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('HI ! HARSH DUSANE')),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: () {
          Get.showSnackbar(
           GetSnackBar(
             backgroundColor: Colors.black,
             title: 'HI I AM HARSH DUSANE I AM FLUTTER DEVELOPER STUDENT ',
             message: 'RED AND WHITE INSTITUE',
             borderRadius: 5,
             margin: EdgeInsets.only(top: 10,left: 10,right: 10),
             duration: Duration(seconds: 5),
             snackPosition: SnackPosition.TOP,
           )
          );
        }, child: Text('Sankbar'))

      ],
    ));
  }
}
