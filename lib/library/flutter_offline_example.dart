import 'package:flutter/material.dart';

class FlutterOfflineExample extends StatefulWidget {
  @override
  _FlutterOfflineExampleState createState() => _FlutterOfflineExampleState();
}

class _FlutterOfflineExampleState extends State<FlutterOfflineExample> {
  var output;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Offline"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: <Widget>[
              //     RaisedButton(
              //       onPressed: () {
              //         goOffline();
              //       },
              //       child: Text("Go Offline"),
              //       color: Colors.tealAccent,
              //     ),
              //     RaisedButton(
              //       onPressed: () {
              //         goOnline();
              //       },
              //       child: Text("Go Online"),
              //       color: Colors.yellowAccent,
              //     )
              //   ],
              // ),
              SizedBox(
                height: 20,
              ),
              Text(
                output?.toString() ?? "Show Output Here",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
