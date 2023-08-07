import 'package:flutter/material.dart';
import 'package:flutter_mvc_bloc/counter/counter_state.dart';

import 'counter_view.dart';

class CounterController extends State<CounterView> {
  // State
  CounterState state = CounterState();

  // Logic
  increment() {
    state = CounterState(
      counter: state.counter + 1,
    );
    setState(() {});
  }

  decrement() {
    state = CounterState(
      counter: state.counter - 1,
    );
    setState(() {});
  }

  // View
  @override
  Widget build(BuildContext context) {
    return widget.build(context, this);
  }
}
