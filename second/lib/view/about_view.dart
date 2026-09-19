import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class AboutView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<CounterController>();
    return Scaffold(
      appBar: AppBar(title: Text("About page")),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 150, width: 250, color: Colors.pink),
            Text('Counter :${controller.counter} '),
            Row(
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
          ],
        );
      }),
    );
  }
}
