import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_best_packages/library/bot_toast_example.dart';

void main() => runApp(MyApp());

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BotToastInit(
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        navigatorObservers: [BotToastNavigatorObserver()],
        navigatorKey: navigatorKey,
        theme:
            ThemeData(primarySwatch: Colors.cyan, brightness: Brightness.dark),
        home: BotToastExample(),
      ),
    );
  }
}
