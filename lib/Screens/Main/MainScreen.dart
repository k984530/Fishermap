import 'package:fishermap/Screens/Main/Widgets/WeatherWidget.dart';
import 'package:fishermap/Screens/Main/Widgets/townContainer.dart';
import 'package:fishermap/Screens/Main/Widgets/infoContainer.dart';
import 'package:fishermap/Screens/Main/Widgets/aiContainer.dart';
import 'package:fishermap/Screens/Main/Widgets/tradeContainer.dart';
import 'package:fishermap/Screens/Main/Widgets/backgroundWidget.dart';
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
          BackgroundWidget(),
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
          Positioned(
            bottom: 65,
            right: 0,
            child: AIContainer(),
          ),
          Positioned(
            bottom: 65,
            left: 10,
            child: TownContainer(),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: WeatherWidget(),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
