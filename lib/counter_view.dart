// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => CounterController();

  @override
  Widget build(
    BuildContext context,
    CounterController controller,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "${controller.counter}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () => controller.increment(),
                child: const Text("Increment"),
              ),
              ElevatedButton(
                onPressed: () => controller.decrement(),
                child: const Text("Decrement"),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}

class CounterController extends State<CounterView> {
  // State
  int counter = 0;

  // Logic
  increment() {
    counter++;
    setState(() {});
  }

  decrement() {
    counter--;
    setState(() {});
  }

  // View
  @override
  Widget build(BuildContext context) {
    return widget.build(context, this);
  }
}
