import 'package:ecommerce_app/Core/auth_service.dart';
import 'package:ecommerce_app/Module/Home/home_page.dart';
import 'package:ecommerce_app/Module/Login/Provider/login_provider.dart';
import 'package:ecommerce_app/Module/Login/View/Screens/sign_up_screen.dart';
import 'package:ecommerce_app/Module/Login/View/Widget/bottomsheet.dart';
import 'package:ecommerce_app/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button extends StatefulWidget {
  final String text;
  // final GestureDetector button;
  Button({
    super.key,
    required this.text,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LoginProvider>(context);
    final authService = AuthService();
    return GestureDetector(
      onTap: () async {
        if (widget.text == 'Login') {
          final email = provider.emailController.text.toString();
          final password = provider.passwordController.text.toString();
          try {
            await authService.signInWithEmailAndPassword(email, password);
            print('--------');
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          } catch (e) {
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Error : $e'),
                ),
              );
            }
          }
        } else if (widget.text == 'Sign Up') {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SignUpPage(),
            ),
          );
          // LoginBottomSheet.showSuccessBottomSheet(context);
        } else if (widget.text == 'Done') {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        }
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: Text(
          '${widget.text}',
          style: TextStyle(
              color: AppColors.buttonText,
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
    );
  }
}
