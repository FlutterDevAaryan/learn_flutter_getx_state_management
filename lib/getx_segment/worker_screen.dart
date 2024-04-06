import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/controller/controller_class.dart';

class GetXWorkerScreen extends StatefulWidget {
  const GetXWorkerScreen({super.key});

  @override
  State<GetXWorkerScreen> createState() => _GetXWorkerScreenState();
}

class _GetXWorkerScreenState extends State<GetXWorkerScreen> {
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Worker'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
              myController.workerDecrement();
            },
                child: const Text('Increment')
            ),

            TextFormField(
              onChanged: (value) {
                myController.workerDecrement();
              },
            )
          ],
        ),
      ),
    );
  }
}
