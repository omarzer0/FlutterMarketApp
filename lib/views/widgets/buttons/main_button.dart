import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';

class MainButton extends StatelessWidget {
  final String title;

  MainButton({this.title = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.MAIN,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            letterSpacing: 1),
      ),
    );
  }
}
