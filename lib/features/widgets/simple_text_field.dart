import 'package:flutter/material.dart';
import 'package:lazy_note/core/constants/app_values.dart';
import 'package:lazy_note/core/themes/app_colors.dart';
import 'package:lazy_note/core/themes/app_fonts.dart';
import 'package:lazy_note/core/themes/decorations/text_styles.dart';
import 'package:lazy_note/domain/extensions/icon_extension.dart';

class SimpleTextField extends StatelessWidget {
  const SimpleTextField({
    super.key,
    required this.title,
    required this.textController,
    required this.onPaste,
    required this.onCopy,
    required this.onClean,
    this.maxLines = 1,
    this.textInputAction = TextInputAction.next,
  });
  final String title;
  final TextEditingController textController;
  final VoidCallback onPaste;
  final VoidCallback onCopy;
  final VoidCallback onClean;
  final int maxLines;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Focus(
          canRequestFocus: false,
          descendantsAreFocusable: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: TextStyles.inter16().copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: onClean,
                icon: Icon(
                  Icons.close,
                  size: AppValues.p_22,
                  color: context.dynamicPrimayIconColor(),
                ),
              ),
              IconButton(
                onPressed: onCopy,
                icon: Icon(
                  Icons.copy_outlined,
                  size: AppValues.p_20,
                  color: context.dynamicPrimayIconColor(),
                ),
              ),
              IconButton(
                onPressed: onPaste,
                icon: Icon(
                  Icons.paste_outlined,
                  size: AppValues.p_20,
                  color: context.dynamicPrimayIconColor(),
                ),
              ),
            ],
          ),
        ),
        TextField(
          controller: textController,
          maxLines: maxLines,
          style: TextStyle(fontFamily: AppFonts.inter),
          textInputAction: textInputAction,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.greyBase.withAlpha(40),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(AppValues.p_10)),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(AppValues.p_10),
              ),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
          ),
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
        ),
      ],
    );
  }
}
