import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/controller/controller_class.dart';
import 'package:learn_flutter_getx_state_management/controller/getx_service.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/home_screen.dart';
import 'package:learn_flutter_getx_state_management/getx_segment/next_screen.dart';
import 'package:learn_flutter_getx_state_management/item_classes/all_controller_binding.dart';
import 'package:learn_flutter_getx_state_management/item_classes/localization_class.dart';


Future<void> main() async {
 await initServices();
 await GetStorage.init();
  runApp(const MyApp());
}

Future<void> initServices() async{
  print('starting services..');
  await Get.putAsync(() async => await GetXServices());
  print('All services started..');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    // Get.put(MyController(),permanent: true,tag: 'damn');
    // Get.lazyPut(() => MyController(),tag: 'instance', fenix: true);
    // Get.create<MyController>(() => MyController());
    Get.putAsync<MyController>(() async=> await MyController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // defaultTransition: Transition.circularReveal,
      // transitionDuration: Duration(milliseconds: 3000),
      translations: LocalizationMessage(),
      locale: Locale('en','US'),   // Get.deviceLocale, /* for device language */
      fallbackLocale: Locale('en','US'),
      title: 'GetX',
      initialRoute: '/',

      initialBinding: AllControllerBinding(),

      getPages: [
        GetPage(name: '/', page: () => const HomeScreen(),),
        GetPage(name: '/nextScreen', page: () => const NextScreen(),
        transition: Transition.leftToRight),
       /* GetPage(name: '/nextScreen/:someValue', page:() => const NextScreen(),
        transition: Transition.leftToRight
        )*/
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const HomeScreen(),
    );
  }
}
