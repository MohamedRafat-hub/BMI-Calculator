import 'dart:developer';
import 'package:bmi/models/gender_model.dart';
import 'package:bmi/models/person_data_model.dart';
import 'package:bmi/widgets/app_bar_bmi.dart';
import 'package:bmi/widgets/bottom_nav_bar.dart';
import 'package:bmi/widgets/gender_item.dart';
import 'package:bmi/widgets/weight_or_age.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 100;
  bool isMale = false;
  bool isFemale = false;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C2135),
      appBar: AppBarBmi(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 15,
          children: [
            Expanded(
                child: Row(
              spacing: 10,
              children: [
                GenderItem(
                  gender: Gender('assets/icons/male.png', 'Male', isMale, () {
                    log('Male');
                    setState(() {
                      isMale = true;
                      isFemale = false;
                    });
                  }),
                  // image: '',
                  // gender: 'Male',
                  // isSelected: true,
                ),
                GenderItem(
                  gender:
                      Gender('assets/icons/female.png', 'Female', isFemale, () {
                    log('Female is Selected');
                    setState(() {
                      isFemale = true;
                      isMale = false;
                    });
                  }),
                  // image: 'assets/icons/female.png',
                  // gender: 'Female',
                ),
              ],
            )),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff333244),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        color: Color(0xFF8B8C9E)),
                  ),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: '${height.round()}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'cm',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                    ]),
                  ),
                  Slider(
                      value: height,
                      min: 20,
                      max: 200,
                      activeColor: Color(0xffE83D67),
                      onChanged: (range) {
                        height = range;
                        setState(() {});
                      }),
                ],
              ),
            )),
            Expanded(
                child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: WeightOrAge(
                    containerName: 'Weight',
                    value: weight,
                    bn1: 'bn1',
                    bn2: 'bn2',
                    onPressedPlus: () {
                      weight++;
                      setState(() {});
                    },
                    onPressedMinus: () {
                      if (weight > 5) {
                        weight--;
                        setState(() {});
                      }
                    },
                  ),
                ),
                Expanded(
                  child: WeightOrAge(
                    containerName: 'Age',
                    value: age,
                    bn1: 'bn3',
                    bn2: 'bn4',
                    onPressedPlus: () {
                      age++;
                      setState(() {});
                    },
                    onPressedMinus: () {
                      if (age > 1) {
                        age--;
                        setState(() {});
                      }
                    },
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        calc: 'Calculate',
        onPressed: () {
          Navigator.pushNamed(context, 'ResultScreen',
              arguments: PersonData(
                  height: height,
                  weight: weight,
                  isFemale: isFemale,
                  isMale: isMale,
                  age: age));
        },
      ),
    );
  }
}
