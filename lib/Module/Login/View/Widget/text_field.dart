import 'package:ecommerce_app/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';

class LoginTextField extends StatefulWidget {
  final TextEditingController controller;
  final IconData icon;
  final String label;
  LoginTextField({super.key,required this.controller,required this.label,required this.icon});

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      cursorColor: AppColors.textFieldBorder,
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.icon,
          size: 26,
          color: AppColors.textFieldBorder,
        ),
        labelText: widget.label,
        labelStyle: TextStyle(
          color: AppColors.textFieldBorder,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.textFieldBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.textFieldBorder),
        ),
      ),
    );
  }
}
