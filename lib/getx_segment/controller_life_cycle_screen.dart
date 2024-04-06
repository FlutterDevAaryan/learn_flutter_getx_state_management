import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/controller/controller_class.dart';

class ControllerLifeCycleScreen extends StatefulWidget {
  const ControllerLifeCycleScreen({super.key});

  @override
  State<ControllerLifeCycleScreen> createState() => _ControllerLifeCycleScreenState();
}

class _ControllerLifeCycleScreenState extends State<ControllerLifeCycleScreen> {
  MyController myController = Get.put(MyController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controller LifeCycle'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<MyController>(
              initState: (state) => myController.lifeCycleDecrement(),
              // dispose: (state) => myController.cleanUpTask(),
              builder: (controller) {
                // return Text('value is ${controller.count}');
                return Text('value is ${myController.lifeCycleCount}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
