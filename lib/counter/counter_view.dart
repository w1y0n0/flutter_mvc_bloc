// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'counter_controller.dart';

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
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "COUNTER: ${controller.state.counter}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "USERS: ${controller.state.users.length}",
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
            ElevatedButton(
              onPressed: () => controller.getUsers(),
              child: const Text("Get Users"),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: controller.state.users.length,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.state.users[index];

                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["avatar"],
                        ),
                      ),
                      title: Text(item["first_name"]),
                      subtitle: Text(item["email"]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
