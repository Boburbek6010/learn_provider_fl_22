import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_provider_fl_22/ui/home/home_controller.dart';
import 'package:provider/provider.dart';

import 'home_widgets/home_counter_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<HomeController>();
    log("build");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.read<HomeController>().counter.toString()),
            GestureDetector(
              onTap: () => context.read<HomeController>().increment(),
              child: const HomeCounterWidget(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  color: Colors.blueGrey,
                  onPressed: context.read<HomeController>().decrement,
                  child: const Icon(CupertinoIcons.minus),
                ),
                const SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  color: Colors.blueGrey,
                  onPressed: context.read<HomeController>().makeItZero,
                  child: const Text("Reset"),
                ),
                const SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  color: Colors.blueGrey,
                  onPressed: context.read<HomeController>().increment,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
