import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/home_screen.dart';
import 'package:getx_practice/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      fallbackLocale: const Locale('en', 'US'),
      translations: Languages(),
      locale: const Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        // GetPage(name: '/screenOne', page: () => ScreenOne()),
      ],
    );
  }
}
