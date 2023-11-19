import 'package:fishermap/Screens/Information/InformationScreen.dart';
import 'package:fishermap/Screens/Main/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'Screens/Weather/WeatherScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: MainScreen(),
      home: MainScreen(),
      getPages: [
        GetPage(
          name: '/Main',
          page: () => MainScreen(),
        ),
        GetPage(
          name: '/Weather',
          page: () => WeatherScreen(),
        ),
        GetPage(
          name: '/Information',
          page: () => InformationScreen(),
        ),
      ],
    );
  }
}
