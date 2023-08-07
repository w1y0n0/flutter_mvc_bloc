import 'package:dio/dio.dart';
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

  getUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    state = CounterState(
      counter: state.counter,
      users: obj["data"],
    );
    setState(() {});
  }

  // View
  @override
  Widget build(BuildContext context) {
    return widget.build(context, this);
  }
}
