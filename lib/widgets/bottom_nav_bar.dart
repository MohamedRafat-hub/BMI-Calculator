import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
   BottomNavBar({super.key , required this.calc , required this.onPressed , this.result});
  final String calc;
  void Function()? onPressed;
  double? result;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(
        calc,
        style: TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      color: Color(0xFFE83D67),
      height: 100,
    );
  }
}
