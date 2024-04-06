import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/route_screen.dart';

class RouteNavigation extends StatefulWidget {
  const RouteNavigation({super.key});

  @override
  State<RouteNavigation> createState() => _RouteNavigationState();
}

class _RouteNavigationState extends State<RouteNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Navigation'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    // var message = await Get.to(RouteScreen());  /*get data from next screen*/
                    // print('The message is $message');
                    Get.to(const RouteScreen(),
                    // fullscreenDialog: true,
                    // transition: Transition.zoom,
                    //   duration: Duration(milliseconds: 2000),
                    //   curve: Curves.easeInCubic,
                      arguments: 'Valar Morgulis'

                    );
                    // Get.off(const RouteScreen()); /*replace the current screen*/
                    // Get.offAll(const RouteScreen()); /*make the route empty and navigate*/

                  },
                  child: const Text('Normal')),

              ElevatedButton(
                  onPressed: () async {
                    // var message = await Get.to(RouteScreen());  /*get data from next screen*/
                    // print('The message is $message');
                 /*   Get.toNamed('/nextScreen',
                        // fullscreenDialog: true,
                        // transition: Transition.zoom,
                        //   duration: Duration(milliseconds: 2000),
                        //   curve: Curves.easeInCubic,

                    );*/
                    Get.toNamed('/nextScreen?drink=Coffee&breakfast=Cadbury Pancakes');
                    // Get.toNamed('/nextScreen/1234');
                    // Get.offNamed('/nextScreen'); /*replace the stack*/
                    // Get.offAllNamed('/nextScreen'); /*make the stack empty and navigate*/

                  },
                  child: const Text('Tricky')),
            ],
          ),
        ),
      ),
    );
  }
}
