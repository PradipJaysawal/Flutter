import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int counter = 0;
  void incrementCounter() {
    counter++;
    print("add");
    setState(() {});
  }

  void decrementCounter() {
    counter--;
    print("sub");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(title: const Text('Home page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 150, width: 250, color: Colors.pink),
          Text('Counter : $counter'),
          Row(
            children: [
              FilledButton(
                onPressed: () {
                  decrementCounter();
                },
                child: Text('-'),
              ),
              Gap(10),
              FilledButton(
                onPressed: () {
                  incrementCounter();
                },
                child: Text('+'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
