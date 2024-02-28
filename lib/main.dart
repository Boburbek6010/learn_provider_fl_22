
import 'package:flutter/cupertino.dart';
import 'package:learn_provider_fl_22/ui/detail/detail_controller.dart';
import 'package:learn_provider_fl_22/ui/home/home_controller.dart';
import 'package:provider/provider.dart';
import 'app.dart';

void main(){
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>HomeController(),
        ),
        ChangeNotifierProvider(
          create: (context) =>DetailController(),
        ),
      ],
      child: const App(),
    )
  );
}