import 'package:flutter/material.dart';

class ServiceView extends StatefulWidget {
  const new({super.key});

  @override
  State<ServiceView> createState() => _ServiceViewState();
}

class _ServiceViewState extends State<ServiceView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Services')),
        body: FilledButton(
          onPressed: () {},
          child: Text("Go back to contact page"),
        ),
      ),
    );
  }
}
