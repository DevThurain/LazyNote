import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_note/features/note_list/presentation/widgets/add_note_widget.dart';
import 'package:lazy_note/features/widgets/auto_annotated_region_widget.dart';
import 'package:lazy_note/features/widgets/glass_bottom_navigation_bar.dart';

class NoteListScreen extends HookConsumerWidget {
  const NoteListScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoAnnotatedRegionWidget(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: AddNoteWidget(onTap: () {}),
        bottomNavigationBar: GlassBottomNavigationBar(),
      ),
    );
  }
}
