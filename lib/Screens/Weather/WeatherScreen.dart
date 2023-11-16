import 'package:fishermap/Screens/Main/Widgets/WeatherWidget.dart';
import 'package:flutter/material.dart';

import '../Main/Widgets/backgroundWidget.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Hero(
              tag: 'weather',
              child: WeatherWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
