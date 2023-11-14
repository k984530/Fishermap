import 'package:fishermap/Screens/Main/Widgets/WeatherWidget.dart';
import 'package:fishermap/Screens/Main/Widgets/infoContainer.dart';
import 'package:fishermap/Screens/Main/Widgets/tradeContainer.dart';
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
          Container(color: Color.fromARGB(255, 1, 0, 20)),
          WaveWidget(),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: WeatherWidget(),
          ),
          Positioned(
            top: 200,
            left: 0,
            child: InfoContainer(),
          ),
          Positioned(
            top: 200,
            right: 10,
            child: TradeContainer(),
          ),
        ],
      ),
    );
  }
}
