import 'package:flutter/material.dart';
import 'package:quran_app/models/containers_model.dart';

import '../constants/colors.dart';
import '../constants/style.dart';

class BuildingContainers extends StatelessWidget {
  const BuildingContainers({
    super.key,
    required this.model,
    this.onTap,
  });

  final ContainersModel model;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.KPrimaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Image.asset(
                model.img,
                width: 65,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          model.title,
          style: textStyle.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
