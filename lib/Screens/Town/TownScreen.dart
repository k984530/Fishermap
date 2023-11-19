import 'package:fishermap/Palate.dart';
import 'package:flutter/material.dart';

class TownScreen extends StatelessWidget {
  const TownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palate.ContainerColor,
      ),
      body: Container(
        color: Palate.ContainerColor,
        alignment: Alignment.center,
        child: Image.asset(
          'assets/map.jpeg',
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height - 350,
          width: MediaQuery.of(context).size.width - 20,
        ),
      ),
    );
  }
}
