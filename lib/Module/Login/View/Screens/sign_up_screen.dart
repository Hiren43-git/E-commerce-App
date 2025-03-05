import 'package:ecommerce_app/Core/auth_service.dart';
import 'package:ecommerce_app/Module/Home/home_page.dart';
import 'package:ecommerce_app/Module/Login/Provider/login_provider.dart';
import 'package:ecommerce_app/Module/Login/View/Widget/bottomsheet.dart';
import 'package:ecommerce_app/Module/Login/View/Widget/text_field.dart';
import 'package:ecommerce_app/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LoginProvider>(context);
    final authService = AuthService();

    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 14, right: 14, bottom: 14, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Signup to Shoply',
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
              height: 14,
            ),
            LoginTextField(
              controller: provider.passwordController,
              label: 'Password',
              icon: Icons.lock_outline_rounded,
            ),
            SizedBox(
              height: 14,
            ),
            LoginTextField(
              controller: provider.conPasswordController,
              label: 'Confirm Password',
              icon: Icons.lock_outline_rounded,
            ),
            SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () async {
                print('tapped');
                final email = provider.emailController.text;
                final password = provider.passwordController.text;
                final conPassword = provider.conPasswordController.text;
                try {
                  if (password == conPassword) {
                    authService.signUpWithEmailAndPassword(email, password);
                    LoginBottomSheet.showSuccessBottomSheet(context);
                  }
                  print('--------------');
                } catch (e) {
                  if (password != conPassword) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Password not matched !!'),
                      ),
                    );
                  }
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
                  'Sign Up',
                  style: TextStyle(
                      color: AppColors.buttonText,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
