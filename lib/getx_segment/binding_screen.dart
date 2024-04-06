import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/controller/controller_class.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/binding_second_screen.dart';

class BindingScreen extends StatefulWidget {
  const BindingScreen({super.key});

  @override
  State<BindingScreen> createState() => _BindingScreenState();
}

class _BindingScreenState extends State<BindingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('GetX Binding'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() =>
              Text('My name is ${Get.find<MyController>().count}'),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<MyController>().increment();
                },
                child: Text('Increment')),

            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(BindingSecondScreen());
                },
                child: Text('Next Screen')),
          ],
        ),
      ) ,
    );
  }
}
