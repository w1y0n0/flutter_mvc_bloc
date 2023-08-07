import 'package:flutter/material.dart';
import 'package:flutter_mvc_bloc/counter/counter_state.dart';
import 'package:flutter_mvc_bloc/service/user_service.dart';

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
    var users = await UserService().getUsers();
    state = CounterState(
      counter: state.counter,
      users: users,
    );
    setState(() {});
  }

  // View
  @override
  Widget build(BuildContext context) {
    return widget.build(context, this);
  }
}
