import 'package:flutter/material.dart';
import 'package:quran_app/constants/colors.dart';

class ReusableTextForm extends StatelessWidget {
  ReusableTextForm({
    Key? key,
    required this.hint,
    required this.isPassword,
    required this.controller,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  final String hint;
  final isPassword;
  final controller;
  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.KSecondColor.withOpacity(0.6),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.KPrimaryColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 18,
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: AppColors.KPrimaryColor,
                size: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
