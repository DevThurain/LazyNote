import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_note/core/constants/app_values.dart';
import 'package:lazy_note/core/themes/app_colors.dart';
import 'package:lazy_note/core/themes/decorations/text_styles.dart';
import 'package:lazy_note/data/persistent/providers/note_dao_provider.dart';
import 'package:lazy_note/domain/entities/note_entity.dart';
import 'package:lazy_note/features/note_list/presentation/providers/note_list_provider.dart';

class NoteListScreen extends ConsumerWidget {
  const NoteListScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var noteList = ref.watch(noteListProvider);
    var reactiveNoteList = ref.watch(reactiveNoteListProvider);

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

        reactiveNoteList.when(
          data: (rNoteList) {
            debugPrint(rNoteList.toString());
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => CheckboxListTile(
                  title: Text(
                    rNoteList[index].title,
                    style: TextStyle(
                      decoration:
                          rNoteList[index].isCompleted
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                    ),
                  ),
                  value: rNoteList[index].isCompleted,
                  onChanged: (isChecked) async {
                    await ref
                        .read(noteDaoProvider)
                        .updateCheckStatus(
                          rNoteList[index],
                          isChecked ?? false,
                        );
                  },
                ),
                childCount: rNoteList.length,
              ),
            );
          },
          error: (e, t) {
            return SliverToBoxAdapter(child: SizedBox());
          },
          loading: () {
            return SliverToBoxAdapter(child: SizedBox());
          },
        ),
      ],
    );
  }
}
