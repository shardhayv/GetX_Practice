import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        backgroundColor: Colors.blue,
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('Dialog Alert'),
              subtitle: const Text('GetX Dialog alert showing'),
              onTap: () {
                Get.defaultDialog(
                    title: 'Confirm Okay',
                    backgroundColor: Colors.red,
                    middleText: 'Click Yes to Okay and No to No',
                    textCancel: 'No',
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text('Okay')));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('Shardhay', 'I\'m Learning GetX',
              snackPosition: SnackPosition.BOTTOM,
              icon: const Icon(Icons.close));
        },
      ),
    );
  }
}
