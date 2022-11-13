import 'dart:ui';

import 'package:crystal_memories/commons/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper.pink.withOpacity(0.01),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/png/background/bg_lvl3.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2.5.r,
                sigmaY: 2.5.r,
              ),
              child: Container(color: Colors.transparent),
            ),
          ),
          SafeArea(
            child: child,
          ),
        ],
      ),
    );
  }
}
