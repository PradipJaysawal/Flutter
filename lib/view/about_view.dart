import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'contact_view.dart';

class AboutView extends StatefulWidget {
  const new({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('About')),
        body: FilledButton(
          onPressed: () {
            Get.to(ContactView());
          },
          child: Text("Go back to services page"),
        ),
      ),
    );
  }
}
