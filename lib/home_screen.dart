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
          Center(
            child: TextButton(
              onPressed: () {
                // Get.to(const ScreenOne(
                //   name: 'Shardhay',
                // ));
                Get.toNamed('/screenOne', arguments: [
                  'name',
                  'Shardhay',
                ]);
              },
              child: const Text('Go to Screen One'),
            ),
          ),
        ],
      ),
    );
  }
}
