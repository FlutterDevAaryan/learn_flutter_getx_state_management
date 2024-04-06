import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetXServices extends GetxService{

  Future<void> serviceIncrementCounter() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int counter = (sharedPreferences.getInt('counter') ?? 0) +1;
    print('Pressed $counter times');
    await sharedPreferences.setInt('counter', counter);
  }

}