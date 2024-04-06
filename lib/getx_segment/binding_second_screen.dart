import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/controller/binding_controller.dart';

class BindingSecondScreen extends StatefulWidget {
  const BindingSecondScreen({super.key});

  @override
  State<BindingSecondScreen> createState() => _BindingSecondScreenState();
}

class _BindingSecondScreenState extends State<BindingSecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Storage Data'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() =>
                Text('My name is ${Get.find<BindingController>().bindingCounter}'),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<BindingController>().bindcounter();
                },
                child: Text('Increment')),

            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Previous Screen')),
          ],
        ),
      ),
    );
  }
}
