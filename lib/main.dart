import 'package:flutter/material.dart';
import 'package:flutter_best_packages/library/flutter_spinkit_example.dart';

void main() => runApp(MyApp());

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: ThemeData(primarySwatch: Colors.cyan, brightness: Brightness.dark),
      home: FlutterSpinkitExample(),
    );
  }
}
