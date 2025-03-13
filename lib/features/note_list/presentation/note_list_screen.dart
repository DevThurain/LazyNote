import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_note/core/constants/app_values.dart';
import 'package:lazy_note/core/themes/app_colors.dart';
import 'package:lazy_note/core/themes/decorations/text_styles.dart';
import 'package:lazy_note/features/note_list/presentation/widgets/add_note_widget.dart';
import 'package:lazy_note/features/widgets/auto_annotated_region_widget.dart';
import 'package:lazy_note/features/widgets/glass_bottom_navigation_bar.dart';

class NoteListScreen extends HookConsumerWidget {
  const NoteListScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return AutoAnnotatedRegionWidget(
      brightness: Brightness.light,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: AddNoteWidget(onTap: () {}),
        bottomNavigationBar: GlassBottomNavigationBar(),
        body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  collapsedHeight: AppValues.p_66,
                  backgroundColor: AppColors.violet,
                  pinned: true,
                  title: Text(
                    'October 20, 2022',
                    style: TextStyles.inter16().copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  centerTitle: true,
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
