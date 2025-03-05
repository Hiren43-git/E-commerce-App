import 'package:ecommerce_app/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonColor,
      body: Center(
        child: Text(
          'SHOPLY.',
          style: TextStyle(
              color: AppColors.buttonText,
              fontWeight: FontWeight.w600,
              fontSize: 40),
        ),
      ),
    );
  }
}
