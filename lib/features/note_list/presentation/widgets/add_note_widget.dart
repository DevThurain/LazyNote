import 'package:flutter/material.dart';
import 'package:lazy_note/core/themes/app_colors.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTap,
      backgroundColor: AppColors.violet,
      child: Icon(Icons.add, color: AppColors.white),
    );
  }
}
