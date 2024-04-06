import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                // Get.defaultDialog();
                Get.defaultDialog(
                  title: 'Are you sure you wanna?',
                  titleStyle: TextStyle(fontSize: 20),
                  middleText: 'this is a message',
                  middleTextStyle: TextStyle(fontSize: 14),
                  backgroundColor: Colors.blue,
                  // radius: 10,
                  content: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      CircularProgressIndicator(),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(child: Text('data loading')) /*override the middleText*/
                    ],
                  ),
                  // textCancel: 'Cancel',
                  // cancelTextColor: Colors.black,
                  // textConfirm: 'Confirm',
                  // confirmTextColor: Colors.pink,
                  // onCancel: () {
                  //
                  // },
                  // onConfirm: () {
                  //
                  // },
                  // buttonColor: Colors.green
                  // cancel: Text('Cancel',style: TextStyle(fontSize: 15,color: Colors.white),),
                  // confirm: Text('Confirm', style: TextStyle(fontSize: 15,color: Colors.white),),
                  actions: [
                    OutlinedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('Cancel') ),
                    ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('Confirm') ),
                  ],
                  barrierDismissible: false



                );
              },
              child: Text('Show Dialog')),
        ),
      ),
    );
  }
}
