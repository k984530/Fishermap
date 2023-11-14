import 'package:fishermap/Screens/Main/Widgets/WeatherWidget.dart';
import 'package:fishermap/Screens/Main/Widgets/waveWidget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(),
          WaveWidget(),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: WeatherWidget(),
          ),
        ],
      ),
    );
  }
}
