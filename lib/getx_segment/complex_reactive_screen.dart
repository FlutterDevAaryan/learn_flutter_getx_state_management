import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/controller/controller_class.dart';

class ComplexReactiveScreen extends StatefulWidget {
  const ComplexReactiveScreen({super.key});

  @override
  State<ComplexReactiveScreen> createState() => _ComplexReactiveScreenState();
}

class _ComplexReactiveScreenState extends State<ComplexReactiveScreen> {
  MyController myController = Get.put(MyController());
  // final student = Student();
  // final student = Student(name: "aman",age: 10).obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complex Reactive'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                    () =>
                        // Text('My name is ${student.name.value}'),
                        // Text('My name is ${myController.student.name.value}'),
                        Text('My name is ${myController.student.value.name}'),
                        // Text('My name is ${student.value.name}'),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () {
                    // student.name.value = student.name.value.toUpperCase();

                    myController.convertUpperCase();

                /*    student.update((student) {
                      student?.name = student.name.toString().toUpperCase();
                    });*/
                  },
                  child: Text('UpperCase'))
            ],
          ),
      ) ,
    );
  }
}
