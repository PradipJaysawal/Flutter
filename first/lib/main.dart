import 'package:first/view/home_view.dart';
import 'package:first/view/home_view1.dart';
// import 'package:first/view/like_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // added GetMaterialApp to use GetX navigation and state management & imported get package in pubspec.yaml
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),

      // home: LikeBtn(),
    );
  }
}
