import 'package:flutter/material.dart';

import 'counter_view.dart';

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
