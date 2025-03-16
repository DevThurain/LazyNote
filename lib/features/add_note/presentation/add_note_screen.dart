import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_note/core/constants/app_values.dart';
import 'package:lazy_note/core/themes/app_colors.dart';
import 'package:lazy_note/core/themes/decorations/text_styles.dart';
import 'package:lazy_note/features/add_note/presentation/providers/add_note_notifier.dart';
import 'package:lazy_note/features/widgets/auto_annotated_region_widget.dart';
import 'package:lazy_note/features/widgets/color_button.dart';
import 'package:lazy_note/features/widgets/simple_text_field.dart';

class AddNoteScreen extends HookConsumerWidget {
  const AddNoteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = useTextEditingController();
    final noteController = useTextEditingController();

    ref.listen(addNoteNotifierProvider, (prev, next) {
      next.whenData((option) {
        if (option.isSome()) {
          _showSnackBar(context);
        }
      });
    });

    return AutoAnnotatedRegionWidget(
      brightness: Brightness.light,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: AppValues.p_66,
          backgroundColor: AppColors.violet,
          iconTheme: IconThemeData(
            color: AppColors.white, //change your color here
          ),
          centerTitle: true,
          title: Text(
            'Add New Note',
            style: TextStyles.inter16().copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppValues.p_16),
                child: SimpleTextField(
                  title: 'Note Title',
                  textController: titleController,
                  onPaste: () {},
                  onCopy: () {},
                  onClean: () {},
                  maxLines: 2,
                ),
              ),

              SizedBox(height: AppValues.p_16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppValues.p_16),
                child: SimpleTextField(
                  title: 'Note',
                  textController: noteController,
                  onPaste: () {},
                  onCopy: () {},
                  onClean: () {},
                  maxLines: 5,
                  textInputAction: TextInputAction.done,
                ),
              ),
              SizedBox(height: AppValues.p_22),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppValues.p_16),
                child: ColorButton(
                  text: 'Save',
                  color: AppColors.violet,
                  onTap: () {
                    ref
                        .read(addNoteNotifierProvider.notifier)
                        .addNote(titleController.text, noteController.text);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Saved Note'), backgroundColor: AppColors.violet),
    );
    GoRouter.of(context).pop();
  }
}
