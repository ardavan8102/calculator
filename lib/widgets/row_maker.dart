import 'package:calculator/utils/constants/colors.dart';
import 'package:calculator/widgets/numeric_buttons.dart';
import 'package:flutter/material.dart';

class numpadRowMaker extends StatelessWidget {
  const numpadRowMaker({
    super.key,
    required this.isDark, required this.label1, required this.label2, required this.label3, required this.label4,
  });

  final bool isDark;
  final String label1, label2, label3, label4;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        numericButton(
          label: label1,
          backGroundColor: isDark ? AppColors.darkButtonBackGround : AppColors.lightButtonBackGround,
          showBorder: false,
        ),
    
        const SizedBox(width: 15),
    
        numericButton(
          label: label2,
          backGroundColor: isDark ? AppColors.darkButtonBackGround : AppColors.lightButtonBackGround,
          showBorder: false,
        ),
    
        const SizedBox(width: 15),
    
        numericButton(
          label: label3,
          backGroundColor: isDark ? AppColors.darkButtonBackGround : AppColors.lightButtonBackGround,
          showBorder: false,
        ),
    
        const SizedBox(width: 15),
    
        numericButton(
          label: label4,
          backGroundColor: isDark ? AppColors.darkButtonBackGround : AppColors.lightButtonBackGround,
          showBorder: false,
        ),
      ],
    );
  }
}