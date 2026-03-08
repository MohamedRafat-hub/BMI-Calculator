import 'package:bmi/screens/home_screen.dart';
import 'package:bmi/screens/result_screen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Bmi());
}


class Bmi extends StatelessWidget {
  const Bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'HomeScreen' : (context)=>HomeScreen(),
        'ResultScreen' : (context) => ResultScreen(),
      },
      initialRoute: 'HomeScreen',
    );
  }
}
