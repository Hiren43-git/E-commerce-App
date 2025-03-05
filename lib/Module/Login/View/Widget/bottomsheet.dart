import 'package:ecommerce_app/Module/Login/View/Widget/button.dart';
import 'package:ecommerce_app/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';

class LoginBottomSheet {
  static void showSuccessBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 16,
              ),
              Icon(
                Icons.check_circle_outline_rounded,
                color: AppColors.buttonColor,
                size: 130 ,
              ),
              SizedBox(
                height: 12,
              ),
              Text('Login Successful!!',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Button(text: 'Done'),
              ),
            ],
          ),
        );
      },
    );
  }
}
