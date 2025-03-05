import 'package:ecommerce_app/Module/Login/Provider/login_provider.dart';
import 'package:ecommerce_app/Module/Login/View/Widget/button.dart';
import 'package:ecommerce_app/Module/Login/View/Widget/text_field.dart';
import 'package:ecommerce_app/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LoginProvider>(context);
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 14, right: 14, bottom: 14, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login to Shoply',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 24,
            ),
            LoginTextField(
              controller: provider.emailController,
              label: 'Email',
              icon: Icons.email_outlined,
            ),
            SizedBox(
              height: 12,
            ),
            LoginTextField(
              controller: provider.passwordController,
              label: 'Password',
              icon: Icons.lock_outline_rounded,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: AppColors.buttonColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Button(
              text: 'Login',
              // button: GestureDetector(
              //   onTap: () {
                  
              //   },
              ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(
                  // endIndent: 100,
                  color: AppColors.textFieldBorder,
                  height: 1,
                ),
                Text(
                  'OR',
                  style: TextStyle(color: AppColors.textFieldBorder),
                ),
                Divider(
                  color: AppColors.textFieldBorder,
                  height: 1,
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Button(
              text: 'Sign Up',
            ),
          ],
        ),
      ),
    );
  }
}
