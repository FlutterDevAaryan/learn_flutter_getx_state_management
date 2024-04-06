import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class GetStorageScreen extends StatefulWidget {
  const GetStorageScreen({super.key});

  @override
  State<GetStorageScreen> createState() => _GetStorageScreenState();
}

class _GetStorageScreenState extends State<GetStorageScreen> {
  var textController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('GetX Storage'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(

                controller: textController,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                  onPressed: () {
                storage.write('email', textController.text);
              }, child: const Text('Write')
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                  onPressed: () {
                    storage.read('email');
                    print('this = ${storage.read('email')}');
                  }, child: const Text('Read')
              ),
            ),
          ],
        ),
      ),
    );
  }
}
