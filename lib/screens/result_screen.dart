import 'dart:math';

import 'package:bmi/models/person_data_model.dart';
import 'package:bmi/widgets/app_bar_bmi.dart';
import 'package:bmi/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key});

  // PersonData personData = PersonData();

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as PersonData;
    double calcBmi = arg.weight / pow(arg.height / 100, 2);
    return Scaffold(
      backgroundColor: Color(0xFF1C2135),
      appBar: AppBarBmi(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Your Result',
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 35),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              color: Color(0xFF333244),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    arg.resultBmi,
                    style: TextStyle(
                        color: Color(0xFF21BF73),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    arg.calcBmi.ceil().toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 64,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    arg.getBmiDescription(),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8B8C9E)),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        calc: 'Re - Calculate',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  // void result = double get calcBmi => weight / pow(height/100, 2);

}
