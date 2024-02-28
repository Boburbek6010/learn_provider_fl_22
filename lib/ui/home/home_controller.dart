import 'dart:developer';

import 'package:flutter/widgets.dart';


class HomeController with ChangeNotifier{

  int counter = 0;

  void increment(){
    counter++;
    log("increment: $counter");
    notifyListeners();
  }

  void makeItZero(){
    counter = 0;
    log("makeItZero: $counter");
    notifyListeners();
  }

  void decrement(){
    counter--;
    log("decrement: $counter");
    notifyListeners();
  }
}