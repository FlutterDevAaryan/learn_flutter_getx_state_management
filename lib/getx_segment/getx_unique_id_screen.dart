import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/controller/controller_class.dart';

class GetXUniqueIDScreen extends StatefulWidget {
  const GetXUniqueIDScreen({super.key});

  @override
  State<GetXUniqueIDScreen> createState() => _GetXUniqueIDState();
}

class _GetXUniqueIDState extends State<GetXUniqueIDScreen> {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Unique ID'),
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
              id: 'Text1',
              builder: (controller) {
                return Text('There are ${myController.uniqueIDCount} mangoes');
              },
            ),

            GetBuilder<MyController>(
              builder: (controller) {
                return Text('There are ${myController.uniqueIDCount} banana');
              },
            ),
            const SizedBox(height: 25,),
            ElevatedButton(onPressed: () {
              // Get.find<MyController>().increment();
              myController.uniqueIDCounter();
            }, child: const Text('Increment')),
          ],
        ),
      ),
    );
  }
}
