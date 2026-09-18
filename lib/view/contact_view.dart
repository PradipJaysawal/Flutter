import 'package:first/view/home_view.dart';
import 'package:first/view/home_view1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class ContactView extends StatefulWidget {
  const new({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Contact')),
        body: FilledButton(
          onPressed: () {
            Get.offAll(HomeView());
          },
          child: Text("Go back to home page"),
        ),
      ),
    );
  }
}
