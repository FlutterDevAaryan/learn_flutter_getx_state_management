import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/controller/getx_service.dart';

class GetXServiceScreen extends StatefulWidget {
  const GetXServiceScreen({super.key});

  @override
  State<GetXServiceScreen> createState() => _GetXServiceScreenState();
}

class _GetXServiceScreenState extends State<GetXServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('GetX Services'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.find<GetXServices>().serviceIncrementCounter();
                },
                child: Text('Increment'))
          ],
        ),
      ),
    );
  }
}
