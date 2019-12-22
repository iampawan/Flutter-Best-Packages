import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FlutterSpinKitExample extends StatefulWidget {
  @override
  _FlutterSpinKitExampleState createState() => _FlutterSpinKitExampleState();
}

class _FlutterSpinKitExampleState extends State<FlutterSpinKitExample>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Spinkit"),
      ),
      body: GridView.count(
        crossAxisCount: 5,
        children: <Widget>[
          SpinKitRotatingCircle(color: Colors.blue),
          SpinKitRotatingPlain(color: Colors.yellow),
          SpinKitChasingDots(color: Colors.red),
          SpinKitPumpingHeart(color: Colors.blueGrey),
          SpinKitPulse(color: Colors.pinkAccent),
          SpinKitDoubleBounce(color: Colors.amber),

          //Waves
          SpinKitWave(color: Colors.red, type: SpinKitWaveType.start),
          SpinKitWave(color: Colors.green, type: SpinKitWaveType.center),
          SpinKitWave(color: Colors.blue, type: SpinKitWaveType.end),

          //Wander cubes
          SpinKitThreeBounce(color: Colors.pink),
          SpinKitWanderingCubes(color: Colors.lime),
          SpinKitWanderingCubes(color: Colors.orange, shape: BoxShape.circle),

          //circle & fading four
          SpinKitCircle(color: Colors.tealAccent),
          SpinKitFadingFour(color: Colors.white),
          SpinKitFadingFour(color: Colors.indigo, shape: BoxShape.rectangle),

          //fading cubes
          SpinKitFadingCube(color: Colors.cyan),
          SpinKitCubeGrid(size: 51.0, color: Colors.pinkAccent),
          SpinKitFoldingCube(color: Colors.lightBlue),

          //Ring

          SpinKitRing(color: Colors.redAccent),
          SpinKitDualRing(color: Colors.amberAccent),
          SpinKitRipple(color: Colors.greenAccent),

          //Grid
          SpinKitFadingGrid(color: Colors.teal),
          SpinKitFadingGrid(color: Colors.purple, shape: BoxShape.rectangle),

          //spinning
          SpinKitSpinningCircle(color: Colors.deepOrange),
          SpinKitSpinningCircle(
              color: Colors.deepPurpleAccent, shape: BoxShape.rectangle),

          //hourglass
          SpinKitHourGlass(color: Colors.blueAccent),
          SpinKitPouringHourglass(color: Colors.redAccent),

          SpinKitFadingCircle(
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: index.isEven ? Colors.red : Colors.green,
                ),
              );
            },
          ),
          SpinKitSquareCircle(
            color: Colors.green,
            size: 50.0,
            controller: AnimationController(
                vsync: this, duration: Duration(milliseconds: 200)),
          ),
        ],
      ),
    );
  }
}
