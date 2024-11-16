import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // avatar img
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.ScaffoldBg,
                CustomColor.ScaffoldBg.withOpacity(0.3),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/polar.png",
              width: screenWidth,
            ),
          ),
          const SizedBox(height: 30),
          // intro txt
          const Text(
            "Hello there,\nI'm Haneena Ajmi\nA Mobile Application Developer",
            // \n specialised in flutter Development!",
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whiteprimary,
            ),
          ),
          // contact btn
          const SizedBox(height: 15),
          SizedBox(
            width: 190,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Get in touch"),
            ),
          )
          // btn
        ],
      ),
    );
  }
}
