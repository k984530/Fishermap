import 'package:fishermap/Screens/Main/Widgets/Data/weatherController.dart';
import 'package:fishermap/Screens/Main/Widgets/Weather/dustContainer.dart';
import 'package:fishermap/Screens/Main/Widgets/Weather/timeContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});
  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  double height = 185;
  @override
  Widget build(BuildContext context) {
    weatherController flag = Get.put(weatherController());
    return Obx(
      () => AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: flag.controller.value
            ? height
            : MediaQuery.of(context).size.height - 50,
        decoration: BoxDecoration(
          color: Colors.blueGrey[900],
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey,
              offset: Offset(0, 5),
              blurRadius: 2,
            ),
          ],
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Positioned(
              top: 0,
              left: 10,
              width: 120,
              child: SizedBox(
                height: height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    Image.asset(
                      'assets/wheather.png',
                      width: 100,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 130,
              height: height,
              width: 60,
              child: Center(
                child: Text(
                  '9 °',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 190,
              width: 120,
              height: height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Image.asset(
                    'assets/Moon.png',
                    width: 100,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "12",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " 물",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 310,
              width: 70,
              height: height,
              child: Column(
                children: [
                  Spacer(),
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "해안구",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 20,
              width: 60,
              child: GestureDetector(
                onTap: () {
                  final flag = Get.put(weatherController());
                  flag.controller.value = !flag.controller.value;
                },
                child: Text(
                  flag.controller.value ? "더보기" : "닫기",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            if (!flag.controller.value) ...[
              Positioned(
                top: height,
                left: 0,
                right: 0,
                child: dustContainer(),
              ),
              Positioned(
                top: height + 140,
                left: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "시간별",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    timeContainer(),
                  ],
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
