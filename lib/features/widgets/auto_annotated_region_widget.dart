import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AutoAnnotatedRegionWidget extends StatelessWidget {
  final Widget child;
  final Brightness? brightness;
  const AutoAnnotatedRegionWidget({super.key, required this.child, this.brightness});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: brightness ?? (MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Brightness.light
                : Brightness.dark),
      ),
      child: child,
    );
  }
}
