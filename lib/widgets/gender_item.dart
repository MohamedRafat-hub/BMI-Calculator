import 'package:bmi/models/gender_model.dart';
import 'package:flutter/material.dart';

class GenderItem extends StatelessWidget {
  GenderItem({
    super.key,
    required this.gender,
  });
  Gender gender;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: gender.onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: gender.isSelected ? Color(0xFF24263B) : Color(0xff333244),
          ),
          child: Column(
            spacing: 24,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(gender.image),
              Text(gender.genderType , style: TextStyle(color: Color(0xff8B8C9E) , fontSize: 25 , fontWeight: FontWeight.w400),),
            ],
          ),
        ),
      ),
    );
  }
}
