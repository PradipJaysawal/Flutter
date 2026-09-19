import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:second/utils/app_colors.dart';
import 'package:second/view/about_view.dart';

import '../controller/controller.dart';

class HomeStateless extends StatelessWidget {
  const HomeStateless({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<CounterController>();
    print("build");

    return Scaffold(
      appBar: AppBar(title: const Text('Home page')),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(height: 150, width: 250, color: AppColors.primary),
            // InkWell(child: Container(height: 150, width: 250)),
            InkWell(
              onTap: () {
                print("Card tapped");
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Text("Tap Me"),
              ),
            ),
            Text(
              "I am learning GetX state management",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Counter :${controller.counter} '),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () {
                    controller.decrement();
                  },
                  child: Text('-'),
                ),
                Gap(10),
                FilledButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: Text('+'),
                ),
              ],
            ),
            Gap(10),
            FilledButton(
              onPressed: () {
                Get.to(AboutView());
              },
              child: Text("go to about page"),
            ),
            Gap(10),
            Text(
              "I am learning GetX state management",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
              ),
            ),
          ],
        );
      }),
    );
    ;
  }
}
