import 'package:flutter/material.dart';

class AppBarBmi extends StatelessWidget implements PreferredSizeWidget{
  const AppBarBmi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      // toolbarHeight: 50,
      backgroundColor: Color(0xff24263B),
      title: Text(
        'BMI Calculator',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      centerTitle: true,
      elevation: 10,
      shadowColor: Colors.black,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 60);
}