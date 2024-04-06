import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/controller/controller_class.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DependancyInjectionScreen extends StatefulWidget {
  const DependancyInjectionScreen({super.key});

  @override
  State<DependancyInjectionScreen> createState() => _DependancyInjectionScreenState();
}

class _DependancyInjectionScreenState extends State<DependancyInjectionScreen> {
  MyController myController = Get.put(MyController(),permanent: true,tag: 'damn');
  // late SharedPreferences sharedPreferences;
  // int counter = 0;


/*  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      sharedPreferences =  await SharedPreferences.getInstance();
      counter = (await sharedPreferences.getInt("counter"))!;
    });
  }*/

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:  AppBar(
        title: Text('Reactive Copx Two'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Get.find<MyController>(tag: 'damn');
                  // Get.find<MyController>();
                  Get.find<MyController>().dependencyInjectionIncrement();
                /*  Get.snackbar(
                      counter.toString(),
                      "message"
                  );*/
                },
                child: Text('Click me'))
          ],
        ),
      ),
    );
  }
}
