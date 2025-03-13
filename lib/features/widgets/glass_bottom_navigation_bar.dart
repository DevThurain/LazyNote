import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazy_note/core/constants/app_values.dart';
import 'package:lazy_note/domain/extensions/icon_extension.dart';

class GlassBottomNavigationBar extends StatelessWidget {
  const GlassBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: AppValues.p_8,
            sigmaY: AppValues.p_8,
          ),
          child: BottomAppBar(
            elevation:
                0, // transparent, you could use 0x44aaaaff to make it slightly less transparent with a blue hue.
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppValues.p_16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: AppValues.p_44,
                    child: IconButton(
                      onPressed: () {
                        debugPrint("hello");
                      },
                      icon: SvgPicture.asset(
                        'assets/svgs/ic_home.svg',
                        colorFilter: ColorFilter.mode(
                          0 == 0
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
                        debugPrint("hello");
                      },
                      icon: SvgPicture.asset(
                        'assets/svgs/ic_archive.svg',
                        colorFilter: ColorFilter.mode(
                          1 == 0
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
        ),
      ),
    );
  }
}
