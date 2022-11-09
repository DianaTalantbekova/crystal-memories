import 'package:crystal_memories/commons/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LevelButton extends StatelessWidget {
  final String asset;
  const LevelButton({
    super.key,
    required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      height: 80.h,
      child: Image.asset(
        asset,
        fit: BoxFit.contain,
      ),
    );
  }
}
