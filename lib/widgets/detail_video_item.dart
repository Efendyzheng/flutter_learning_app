import 'dart:ui';

import 'package:challenge_learning_app/components/utils.dart';
import 'package:flutter/material.dart';

class DetailVideoItem extends StatelessWidget {
  const DetailVideoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 250,
      margin: const EdgeInsets.only(right: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        image: const DecorationImage(
          image: AssetImage('assets/images/class/class_00.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.7),
          ),
          child: Icon(
            Icons.play_arrow,
            color: whiteColor,
            size: 24,
          ),
        ),
      ),
    );
  }
}
