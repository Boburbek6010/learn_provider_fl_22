import 'dart:developer';

import 'package:flutter/material.dart';

class HomeCounterWidget extends StatelessWidget {
  // final int counter;
  // final VoidCallback onPressed;
  const HomeCounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    log("message");
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.grey,
      ),
    );
  }
}
