import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/controller/binding_controller.dart';
import 'package:learn_flutter_getx_state_management/controller/controller_class.dart';

class AllControllerBinding implements Bindings {


  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
    Get.put<BindingController>(BindingController());
  }

}