import 'package:chapter_getx_ui/CounterApp/Controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
      CounterController controller=Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text('Counter App',style: TextStyle(color: Colors.white),),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              // color: Colors.white,
              child:Center(child: Obx(() => Text('${controller.count.value}',style: TextStyle(color: Colors.deepPurple,fontSize: 50),),)) ,
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
            Get.toNamed('/det');
          }, child: Text('Second Page'))
        ],
      ) ,
      floatingActionButton: FloatingActionButton(onPressed: (){
        controller.counter();
      },
      child: Icon(Icons.add),),
    );

  }
}
