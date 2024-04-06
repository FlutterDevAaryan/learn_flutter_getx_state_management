import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
               Get.snackbar(
                   'title',
                   'message',
               backgroundColor: Colors.grey,
               snackPosition: SnackPosition.BOTTOM,
               // titleText: Text('data'),
               //   messageText: Text('Hey'),
               //   colorText: Colors.deepOrange
               //   borderRadius: 20,
                 margin: EdgeInsets.all(5),
                   maxWidth: 300,
                 animationDuration: Duration(seconds:1),
                 backgroundGradient: LinearGradient(colors: [
                   Colors.greenAccent,
                   Colors.lightBlueAccent,
                   Colors.yellow,
                   Colors.deepOrangeAccent
                 ]),
                 borderWidth: 2,
                 borderColor: Colors.deepPurple,
                 boxShadows: [
                   BoxShadow(
                   color: Colors.pink,
                   blurRadius: 5,
                   spreadRadius: 5,
                   offset: Offset(10, 12),
                     // blurStyle: BlurStyle.normal
                 )
                 ],
                 isDismissible: true,
                 // forwardAnimationCurve: Curves.
                 duration:Duration(milliseconds: 2000),
                 // icon: Icon(Icons.send),
                 //   shouldIconPulse: false,
                 // leftBarIndicatorColor: Colors.deepPurple,
                 // mainButton: TextButton(
                 //     onPressed: () {
                 //
                 //     },
                 //     child: Text('snack')),
                 // onTap: (snack) => print('Snack bar clicked'),
                 // overlayBlur: 1,
                 // padding: EdgeInsets.all(5),
                 // showProgressIndicator:true,
                 // progressIndicatorBackgroundColor: Colors.black,
                 // progressIndicatorValueColor: AlwaysStoppedAnimation(Colors.white),
                 // reverseAnimationCurve: Curves.easeInCubic,
                 // snackbarStatus: (status) {
                 //    print(status);
                 // },
                 //      userInputForm: Form(
                 //     child: TextFormField())
               );
              },
              child: Text('Show Snack Bar')),
        ),
      ),
    );
  }
}
