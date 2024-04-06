import 'dart:ui';

import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/item_classes/student.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '';

class MyController extends GetxController {
  // var student = Student();
  // void convertUpperCase() {
  //   student.name.value = student.name.value.toString().toUpperCase();
  // }
  var student = Student(name: "aman", age: 10).obs;
  var count = 0.obs;
  var simpleCount = -60;
  var lifeCycleCount = 15;
  var uniqueIDCount = 3;
  var workerCount = 1.obs;
  int injectionCounter = 0;


  // =========================================================================================================================
                                           /* for reactive state management */

  void convertUpperCase() {
    student.update((value) {
      value?.name = value.name.toString().toUpperCase();
    }) ;
  }

  void increment() {
    count++;
  }
// =========================================================================================================================
                                          /* for simple state management */
  void simpleIncrement() {
    simpleCount++;
    update();
  }



// =========================================================================================================================
                                        /*for activity lifecycle*/


  Future<void> lifeCycleDecrement() async {
    await Future.delayed(Duration(seconds: 2));
    lifeCycleCount--;
    update();
  }

  void cleanUpTask() {
    print('clean up task');
  }

/*  @override
  void onInit() {
    super.onInit();
    lifeCycleIncrement();
    print('init started');
  }

  @override
  void onClose() {
    print('closed');
  }*/



// =========================================================================================================================
                                              /*for Unique ID Example*/


  void uniqueIDCounter() {
    uniqueIDCount++;
    update(['Text1']);
  }


// =========================================================================================================================
                                                /*for Worker Example*/


  void workerDecrement() {
    workerCount--;
  }

  @override
  void onInit() {
    super.onInit();

    /*call when workerCounter value changes*/
    ever(workerCount ,(_) => Get.snackbar('workerCount','Example',snackPosition: SnackPosition.BOTTOM));

    /*call when varialble's value changes from a list */
    // everAll([workerCount], (callback) => print(workerCount));

    /*call once when varilable value changes*/
    // once(workerCount, (callback) => print(workerCount));

    /*call everytime when the user stop typing in a particular interval (you can time as per your requirement)*/
    // debounce(workerCount, (callback) => print(workerCount),time: Duration(seconds: 2));

    /*call once in particular time range (you can time as per your requirement)*/
    // interval(workerCount, (callback) => print(workerCount),time: Duration(seconds: 2));

  }


// =========================================================================================================================
                                                /*for Internationalization Example*/

void changeLanguage(var language,var languageCode) {
  var locale = Locale(language, languageCode);
  Get.updateLocale(locale);
}


// =========================================================================================================================
                                              /*for Dependency Injection*/

void dependencyInjectionIncrement() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
   injectionCounter = (sharedPreferences.getInt('counter') ??  0) +1;
  print('check = $injectionCounter');
  await sharedPreferences.setInt('counter', injectionCounter!);
}



}