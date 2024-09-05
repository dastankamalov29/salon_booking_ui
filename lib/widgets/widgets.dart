




import 'package:flutter/material.dart';

import '../utils/colors.dart';

Container iconContainer(IconData icon) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primaryColor, secondaryColor],
        ),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 30,
      ),
    );
  }




  Padding designerSkill(text) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 5, right: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
