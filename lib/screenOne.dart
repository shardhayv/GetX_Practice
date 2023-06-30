import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/screeenTwo.dart';

// ignore: must_be_immutable
class ScreenOne extends StatefulWidget {
  var name;
  ScreenOne({super.key, this.name});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Screen One ' + Get.arguments[1]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Get.to(const ScreenTwo());
              },
              child: const Text('Go to TWO'),
            ),
          ),
        ],
      ),
    );
  }
}
