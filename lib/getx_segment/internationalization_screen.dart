import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/controller/controller_class.dart';

class InternationalizationScreen extends StatefulWidget {
  const InternationalizationScreen({super.key});

  @override
  State<InternationalizationScreen> createState() => _InternationalizationScreenState();
}

class _InternationalizationScreenState extends State<InternationalizationScreen> {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: const Text('Getx Internationalization'),
          foregroundColor: Colors.white,
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('hello'.tr),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                    onPressed: () {
                      myController.changeLanguage('hi', 'IN');
                    },
                    child: const Text('Hindi')
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                    onPressed: () {
                      myController.changeLanguage('fr', 'FR');
                    },
                    child: const Text('French')
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                    onPressed: () {
                      myController.changeLanguage('en', 'US');
                    },
                    child: const Text('English')
                ),
              ),
            ],
          ),
        ),
      );
  }
}
