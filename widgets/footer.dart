import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text(
        "Made by Haneena Ajmi with Flutter 3.24.4",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: CustomColor.whitesecondary,
        ),
      ),
    );
  }
}
