import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FlutterSpinkitExample extends StatefulWidget {
  @override
  _FlutterSpinkitExampleState createState() => _FlutterSpinkitExampleState();
}

class _FlutterSpinkitExampleState extends State<FlutterSpinkitExample>
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
          const SpinKitRotatingCircle(color: Colors.blue),
          const SpinKitRotatingPlain(color: Colors.yellow),
          const SpinKitChasingDots(color: Colors.red),
          const SpinKitPumpingHeart(color: Colors.blueGrey),
          const SpinKitPulse(color: Colors.pinkAccent),
          const SpinKitDoubleBounce(color: Colors.amber),

          //Waves
          const SpinKitWave(color: Colors.red, type: SpinKitWaveType.start),
          const SpinKitWave(color: Colors.green, type: SpinKitWaveType.center),
          const SpinKitWave(color: Colors.blue, type: SpinKitWaveType.end),

          //Wander cubes
          const SpinKitThreeBounce(color: Colors.pink),
          const SpinKitWanderingCubes(color: Colors.lime),
          const SpinKitWanderingCubes(
              color: Colors.orange, shape: BoxShape.circle),

          //circle & fading four
          const SpinKitCircle(color: Colors.tealAccent),
          const SpinKitFadingFour(color: Colors.white),
          const SpinKitFadingFour(
              color: Colors.indigo, shape: BoxShape.rectangle),

          //fading cubes
          const SpinKitFadingCube(color: Colors.cyan),
          const SpinKitCubeGrid(size: 51.0, color: Colors.pinkAccent),
          const SpinKitFoldingCube(color: Colors.lightBlue),

          //Ring

          const SpinKitRing(color: Colors.redAccent),
          const SpinKitDualRing(color: Colors.amberAccent),
          const SpinKitRipple(color: Colors.greenAccent),

          //Grid
          const SpinKitFadingGrid(color: Colors.teal),
          const SpinKitFadingGrid(
              color: Colors.purple, shape: BoxShape.rectangle),

          //spinning
          const SpinKitSpinningCircle(color: Colors.deepOrange),
          const SpinKitSpinningCircle(
              color: Colors.deepPurpleAccent, shape: BoxShape.rectangle),

          //hourglass
          const SpinKitHourGlass(color: Colors.blueAccent),
          const SpinKitPouringHourglass(color: Colors.redAccent),

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
                vsync: this, duration: const Duration(milliseconds: 200)),
          ),
        ],
      ),
    );
  }
}
