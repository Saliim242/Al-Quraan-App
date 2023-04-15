import 'package:flutter/material.dart';
import 'package:quran_app/components/sizedbox.dart';
import 'package:quran_app/constants/colors.dart';

import '../components/button.dart';
import '../components/text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Image.asset('images/assets/signin_balls.png'),
                //SizedBoxes(h: 100),

                SizedBoxes(h: 10),
                ReusableTextForm(
                  icon: Icons.email_outlined,
                  controller: emailController,
                  hint: "Enter Your Email",
                  isPassword: false,
                ),
                SizedBoxes(h: 10),

                SizedBoxes(h: 10),
                ReusableTextForm(
                  hint: "Enter Your Password",
                  onPressed: () {
                    setState(() {
                      _isPassword = !_isPassword;
                    });
                  },
                  icon: _isPassword ? Icons.visibility : Icons.visibility_off,
                  controller: passwordController,
                  isPassword: _isPassword,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Forget Password",
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.KRoutersColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBoxes(h: 20),
                GradientButton(),
                SizedBoxes(h: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I don't have an account",
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.KTextColor,
                      ),
                    ),
                    SizedBoxes(w: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.KRoutersColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
