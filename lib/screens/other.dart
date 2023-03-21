import 'package:flutter/material.dart';
import 'package:flutter_dev/controllers/CounterController.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();

  OtherScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Screen was clicked ${_counterController.counter.value} times"),
        const SizedBox(height: 10),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Open Other Screen"))
      ],
    ));
  }
}
