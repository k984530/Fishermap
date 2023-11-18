import 'package:flutter/material.dart';

class dustContainer extends StatelessWidget {
  const dustContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Row(
        children: [
          Spacer(),
          SizedBox(
            width: 30,
            height: 30,
            child: Image.asset(
              'assets/smalldust.png',
              fit: BoxFit.fill,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '미세먼지',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '보통',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 20,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 138, 186, 226),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "23",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          Image.asset(
            'assets/verysmalldust.png',
            fit: BoxFit.fill,
            color: Colors.white,
            width: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '초미세먼지',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '나쁨',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 20,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 53, 71, 86),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "54",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
