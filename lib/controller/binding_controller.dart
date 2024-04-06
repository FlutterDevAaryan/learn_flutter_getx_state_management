
import 'package:get/get.dart';

import 'controller_class.dart';

class BindingController extends GetxController {
  var bindingCounter = 0.obs;

  void bindcounter() {
    bindingCounter++ ;
  }

}