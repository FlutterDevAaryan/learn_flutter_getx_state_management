import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/controller/controller_class.dart';

class SimpleStateManager extends StatefulWidget {
  const SimpleStateManager({super.key});

  @override
  State<SimpleStateManager> createState() => _SimpleStateManagerState();
}

class _SimpleStateManagerState extends State<SimpleStateManager> {
  // MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Simple State Management'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           /* GetX<MyController>(
              // init: MyController(),
              builder: (controller) {                                      //for reactive state management
                // return Text('value is ${controller.count}');
                return Text('value is ${myController.count}');
              },
            ),*/
            GetBuilder<MyController>(
              init: MyController(),
                builder: (controller) {
                  return Text('${controller.simpleCount} Students');
                },),
            const SizedBox(height: 25,),
            ElevatedButton(onPressed: () {
              Get.find<MyController>().simpleIncrement();
              // myController.increment();
            }, child: const Text('Increment')),
          ],
        ),
      ),
    );
  }
}
