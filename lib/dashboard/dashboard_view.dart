// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_mvc_bloc/dashboard/dashboard_event.dart';

import 'dashboard_bloc.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => DashboardBloc();

  @override
  Widget build(
    BuildContext context,
    DashboardBloc bloc,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "COUNTER: ${bloc.state.counter}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "USERS: ${bloc.state.users.length}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              // onPressed: () => bloc.increment(),
              onPressed: () => bloc.add(DashboardIncrementEvent()),
              child: const Text("Increment"),
            ),
            ElevatedButton(
              onPressed: () => bloc.add(DashboardDecrementEvent()),
              child: const Text("Decrement"),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
