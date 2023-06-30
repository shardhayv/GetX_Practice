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
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * 0.8,
            // height: MediaQuery.of(context).size.width * 0.8,
            height: Get.height * 0.2,
            width: Get.width * 0.8,
            color: Colors.red,
            child: const Center(
              child: Text('Center'),
            ),
          ),
          Container(
            // height: MediaQuery.of(context).size.height * 0.8,
            // height: MediaQuery.of(context).size.width * 0.8,
            height: Get.height * 0.2,
            width: Get.width * 0.8,
            color: Colors.yellow,
            child: const Center(
              child: Text('Center'),
            ),
          ),
        ],
      ),
    );
  }
}
