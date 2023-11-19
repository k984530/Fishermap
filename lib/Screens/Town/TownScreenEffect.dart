import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class TownScreenEffect extends StatelessWidget {
  const TownScreenEffect({super.key});

  @override
  Widget build(BuildContext context) {
    timeDilation = 4;

    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'town',
          child: Image.asset(
            'assets/village.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}
