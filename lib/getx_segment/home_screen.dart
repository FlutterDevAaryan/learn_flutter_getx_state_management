import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/api_fetch_screen.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/binding_screen.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/bottom_sheet.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/complex_reactive_screen.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/controller_life_cycle_screen.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/dependancy_injection_screen.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/dialog_screen.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/get_storage_screen.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/getx_sevice_screen.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/getx_unique_id_screen.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/internationalization_screen.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/reactive_sample_screeen.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/route_navigation.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/seperate_ui_bussiness_logic_screen.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/simple_state_screen.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/snack_bar.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/worker_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Elements'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Material(
        color: Colors.blueGrey,
        child: Center(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  InkWell(
                    onTap: () =>  Get.to(const SnackBarScreen()),
                    child: Container(
                      height: 40,
                      width: 220,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Colors.black),
                        boxShadow: const [BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 1
                        )],
                        color: const Color(0xFFF7F1FB)
                      ),
                        child: const Center(
                            child: Text('Snack Bar', style: TextStyle(fontSize: 18),))),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const DialogScreen()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('Dialog', style: TextStyle(fontSize: 18),))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>  Get.to(const BottomSheetScreen()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('Bottom Sheet', style: TextStyle(fontSize: 18),))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const RouteNavigation()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('Route Navigation', style: TextStyle(fontSize: 18),))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const ReactiveSampleScreeen()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('Reactive State', style: TextStyle(fontSize: 18),))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const ComplexReactiveScreen()),
                      child: Container(
                          height: 40,
                          width: 220,

                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('Complex Reactive', style: TextStyle(fontSize: 18),))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const SeperateUiBussinessLogicScreen()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('Sep Ui Buss Logic', style: TextStyle(fontSize: 18),))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const SimpleStateManager()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('Simple State', style: TextStyle(fontSize: 18),))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const ControllerLifeCycleScreen()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('GetxController LifeCycle', style: TextStyle(fontSize: 18),))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const GetXUniqueIDScreen()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('GetX Unique ID', style: TextStyle(fontSize: 18),))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const GetXWorkerScreen()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('GetX Worker', style: TextStyle(fontSize: 18),))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const InternationalizationScreen()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('GetX Internationalization', style: TextStyle(fontSize: 18),))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const DependancyInjectionScreen()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('Dependence Injection', style: TextStyle(fontSize: 18),))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const GetXServiceScreen()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('GetX Services', style: TextStyle(fontSize: 18),))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const BindingScreen()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('GetX Bindings', style: TextStyle(fontSize: 18),))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const ApiFetchScreen()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('GetX Api Fetch', style: TextStyle(fontSize: 18),))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () =>   Get.to(const GetStorageScreen()),
                      child: Container(
                          height: 40,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1
                              )],
                              color: const Color(0xFFF7F1FB)
                          ),
                          child: const Center(
                              child: Text('Get Storage Data', style: TextStyle(fontSize: 18),))),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
