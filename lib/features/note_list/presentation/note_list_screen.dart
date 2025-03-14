import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_note/core/constants/app_values.dart';
import 'package:lazy_note/core/themes/app_colors.dart';
import 'package:lazy_note/core/themes/decorations/text_styles.dart';

class NoteListScreen extends HookConsumerWidget {
  const NoteListScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          collapsedHeight: AppValues.p_66,
          backgroundColor: AppColors.violet,
          pinned: false,
          title: Text(
            'October 20, 2022',
            style: TextStyles.inter16().copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        SliverToBoxAdapter(
          child: Container(height: 200, color: AppColors.violet),
        ),
      ],
    );
  }
}
