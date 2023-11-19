import 'package:fishermap/Palate.dart';
import 'package:fishermap/Screens/Town/TownScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class TownScreenEffect extends StatefulWidget {
  const TownScreenEffect({super.key});

  @override
  State<TownScreenEffect> createState() => _TownScreenEffectState();
}

class _TownScreenEffectState extends State<TownScreenEffect> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: timeDilation), () => disapear());
  }

  void disapear() {
    flag = false;
    setState(() {});
  }

  bool flag = true;
  int timeDilation = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palate.ContainerColor,
      body: Center(
        child: flag
            ? Hero(
                tag: 'town',
                child: Image.asset(
                  'assets/village.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
              )
            : Container(
                child: TownScreen(),
              ),
      ),
    );
  }
}
