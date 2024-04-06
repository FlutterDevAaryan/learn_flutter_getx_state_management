import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({Key? key}) : super(key: key);

  @override
  _BottomSheetScreenState createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.ac_unit_outlined),
                          title: Text('Light Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.access_alarm),
                          title: Text('Dark Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text('Show Bottom Sheet'),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(GetMaterialApp(
    home: BottomSheetScreen(),
  ));
}
