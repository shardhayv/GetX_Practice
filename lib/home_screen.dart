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
        backgroundColor: Colors.green,
        title: const Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: (Text('message'.tr)),
            subtitle: Text('name'.tr),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en', 'US'));
                },
                child: const Text('English'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('sa', 'IN'));
                },
                child: const Text('Sanskrit'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
