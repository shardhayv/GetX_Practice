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
          ),
          Card(
            child: ListTile(
              title: const Text('GetX Bottom Sheet '),
              subtitle: const Text('GetX Dialog alert showing'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark Theme'),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
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
