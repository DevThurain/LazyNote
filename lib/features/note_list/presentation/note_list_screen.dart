import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_note/core/constants/app_values.dart';
import 'package:lazy_note/core/themes/app_colors.dart';
import 'package:lazy_note/core/themes/decorations/text_styles.dart';
import 'package:lazy_note/domain/entities/note_entity.dart';
import 'package:lazy_note/features/note_list/presentation/providers/note_list_provider.dart';

class NoteListScreen extends ConsumerWidget {
  const NoteListScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var noteList = ref.watch(noteListProvider);

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          collapsedHeight: AppValues.p_66,
          backgroundColor: AppColors.violet,
          pinned: false,
          centerTitle: true,
          title: Text(
            'October 20, 2022',
            style: TextStyles.inter16().copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => CheckboxListTile(
              title: Text(noteList[index].title),
              value: noteList[index].isCompleted,
              onChanged: (value) {
                ref.read(noteListProvider.notifier).update((state) {
                  final updatedList = List<NoteEntity>.from(state);
                  updatedList[index] = updatedList[index].copyWith(
                    isCompleted: value ?? false,
                  );
                  return updatedList; // Update state with modified list
                });
              },
            ),
            childCount: noteList.length,
          ),
        ),
      ],
    );
  }
}
