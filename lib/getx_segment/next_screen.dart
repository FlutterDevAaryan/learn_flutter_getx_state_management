import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({super.key});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tricky Navigation Example'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text('Today\'s menu is ${Get.parameters['drink']} and ${Get.parameters['breakfast']}',
               style: TextStyle(fontSize: 18),),

           /*   Text('${Get.parameters['someValue']}',
                  style: TextStyle(fontSize: 18)                        //
              )
*/

            /*  ElevatedButton(
                  onPressed: () {
                Get.toNamed('/ ',arguments: 'Knowledge is power');

              },
                  child: Text(Get.arguments))*/

            ],
          ),
        ),
      ),
    );
  }
}
