import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second/binding/binding.dart';
import 'package:second/view/home.dart';
import 'package:second/view/home_stateless.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),

      initialBinding: ControllerBinding(),
      // home: HomeView(),
      home: HomeStateless(),
    );
  }
}
