import 'package:flutter/material.dart';
import 'package:learn_provider_fl_22/ui/home/home_page.dart';

class App extends StatelessWidget{
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context) => const HomePage(),
      },
    );
  }
}