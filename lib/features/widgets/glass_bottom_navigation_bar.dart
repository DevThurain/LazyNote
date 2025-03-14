import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazy_note/core/constants/app_values.dart';
import 'package:lazy_note/domain/extensions/icon_extension.dart';

class GlassBottomNavigationBar extends StatelessWidget {
  const GlassBottomNavigationBar({
    super.key,
    required this.onTap,
    required this.selectedIndex,
  });
  final Function(int) onTap;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: BottomAppBar(
        elevation:
            0, // transparent, you could use 0x44aaaaff to make it slightly less transparent with a blue hue.
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppValues.p_28),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: AppValues.p_44,
                child: IconButton(
                  onPressed: () {
                    onTap(0);
                  },
                  icon: SvgPicture.asset(
                    'assets/svgs/ic_home.svg',
                    colorFilter: ColorFilter.mode(
                      selectedIndex == 0
                          ? context.dynamicIconColor()
                          : context.dynamicIconColor().withAlpha(138),
                      BlendMode.srcIn,
                    ),
                    width: AppValues.p_40,
                    height: AppValues.p_40,
                  ),
                ),
              ),
              SizedBox(
                height: AppValues.p_44,
                child: IconButton(
                  onPressed: () {
                    onTap(1);
                  },
                  icon: SvgPicture.asset(
                    'assets/svgs/ic_archive.svg',
                    colorFilter: ColorFilter.mode(
                      selectedIndex == 1
                          ? context.dynamicIconColor()
                          : context.dynamicIconColor().withAlpha(138),
                      BlendMode.srcIn,
                    ),
                    width: AppValues.p_40,
                    height: AppValues.p_40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
