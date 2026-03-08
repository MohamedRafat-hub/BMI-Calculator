import 'package:flutter/material.dart';

class WeightOrAge extends StatelessWidget {
   WeightOrAge({
    super.key,
    required this.containerName,
    required this.value,
     required this.bn1,
     required this.bn2,
     this.onPressedPlus,
     this.onPressedMinus,
  });
  final String containerName;
  int value = 60;
   void Function()? onPressedPlus;
   void Function()? onPressedMinus;
   String bn1;
   String bn2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff333244),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            containerName,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                color: Color(0xff8B8C9E)),
          ),
          Text(
            '$value',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                heroTag: bn1,
                onPressed: onPressedMinus,
                shape: CircleBorder(),
                backgroundColor: Color(0xff8B8C9E),
                child: Icon(Icons.remove, color: Colors.white, size: 50),
              ),
              FloatingActionButton(
                heroTag: bn2,
                onPressed: onPressedPlus,
                shape: CircleBorder(),
                backgroundColor: Color(0xff8B8C9E),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}