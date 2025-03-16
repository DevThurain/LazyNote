import 'package:flutter/material.dart';
import 'package:lazy_note/core/constants/app_values.dart';
import 'package:lazy_note/core/themes/app_colors.dart';
import 'package:lazy_note/core/themes/decorations/text_styles.dart';

class ColorButton extends StatelessWidget {
  const ColorButton({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
    this.darkText = false,
  });

  final String text;
  final Color color;
  final VoidCallback onTap;
  final bool darkText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: AppValues.p_56,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(AppValues.p_10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.inter16().copyWith(
              color: darkText ? AppColors.black : AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
