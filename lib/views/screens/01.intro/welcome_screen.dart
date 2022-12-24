import 'package:flutter/material.dart';
import 'package:market_app/config/app_colors.dart';
import 'package:market_app/config/app_images.dart';
import 'package:market_app/views/widgets/buttons/main_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /**
     * Method 1
     * */
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            'assets/images/intro/bg.png',
            fit: BoxFit.cover,
            width: size.width,
            height: size.height,
          ),
          SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  AppImages.white_carrot,
                  width: 48,
                  height: 56,
                ),
                SizedBox(height: 25),
                Text(
                  'Welcome\nto our store',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'gilroy',
                      fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Get your groceries in as fast as one hour',
                  style: TextStyle(
                      fontFamily: 'gilroy',
                      color: AppColors.SECONDARY,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                MainButton(title: "Get started"),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );

    /**
     * Method 2
     * */
    // return Scaffold(
    //   body: Container(
    //     decoration: const BoxDecoration(
    //       image: DecorationImage(
    //         image: AssetImage(AppImages.BG),
    //         fit: BoxFit.cover
    //       )
    //     ),
    //     alignment: Alignment.bottomCenter,
    //     child: SafeArea(
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: [
    //           Image.asset(
    //             AppImages.white_carrot,
    //             width: 48,
    //             height: 56,
    //           ),
    //           SizedBox(height: 25),
    //           Text(
    //             'Welcome\nto our store',
    //             style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 40,
    //                 fontFamily: 'gilroy',
    //                 fontWeight: FontWeight.w800),
    //             textAlign: TextAlign.center,
    //           ),
    //           SizedBox(height: 10),
    //           Text(
    //             'Get your groceries in as fast as one hour',
    //             style: TextStyle(
    //                 fontFamily: 'gilroy',
    //                 color: AppColors.SECONDARY_COLOR,
    //                 fontSize: 16,
    //                 fontWeight: FontWeight.w500),
    //             textAlign: TextAlign.center,
    //           ),
    //           SizedBox(height: 40),
    //           MainButton(title: "Get started"),
    //           SizedBox(height: 30),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
