import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveSampleScreeen extends StatefulWidget {
  const ReactiveSampleScreeen({super.key});

  @override
  State<ReactiveSampleScreeen> createState() => _ReactiveSampleScreeenState();
}

class _ReactiveSampleScreeenState extends State<ReactiveSampleScreeen> {
  var increment = 0.obs;

  void increamentFunction() {
    increment++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reactive State Example'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text('You have eaten ${increment} momos')),
              SizedBox(
                height: 25,
              ),

              ElevatedButton(
                  onPressed: () {
                    increamentFunction();
                  },
                  child: const Text('Increment')),



              // Text('${Get.arguments}',style: TextStyle(fontSize: 18),)
            ],
          ),
        ),
      ),
    );
  }
}
