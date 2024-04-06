import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/controller/controller_class.dart';

class SeperateUiBussinessLogicScreen extends StatefulWidget {
  const SeperateUiBussinessLogicScreen({super.key});

  @override
  State<SeperateUiBussinessLogicScreen> createState() => _SeperateUiBussinessLogicScreenState();
}

class _SeperateUiBussinessLogicScreenState extends State<SeperateUiBussinessLogicScreen> {
  MyController myController = Get.put(MyController(),permanent: false,tag: 'instance');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reactive Copx Two'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<MyController>(
              // init: MyController(),
              builder: (controller) {
                // return Text('value is ${controller.count}');
                return Text('value is ${myController.count}');
              },
            ),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: () {
              // Get.find<MyController>().increment();
              myController.increment();
            }, child: const Text('Increment')),
          ],
        ),
      ),
    );
  }
}
