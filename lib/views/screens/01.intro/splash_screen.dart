import 'package:flutter/material.dart';
import 'package:market_app/config/app_images.dart';

import '../../../config/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.MAIN,
      body: Center(
        child: Image.asset(
          AppImages.LOGO,
          width: size.width * 0.55,
          height: 100,
        ),
      ),
    );
  }
}
