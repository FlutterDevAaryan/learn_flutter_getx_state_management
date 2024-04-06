import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteScreen extends StatefulWidget {
  const RouteScreen({super.key});

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Normal Navigation Example'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Get.arguments),
              SizedBox(
                height: 25,
              ),

              ElevatedButton(
                  onPressed: () {
                    Get.back();
                    // Get.back(result: 'Valar Dohaeris'); /* data for previous screen*/
                  },
                  child: const Text('Back Screen')),



              // Text('${Get.arguments}',style: TextStyle(fontSize: 18),)
            ],
          ),
        ),
      ),
    );
  }
}
