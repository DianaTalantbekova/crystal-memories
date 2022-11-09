import 'package:crystal_memories/commons/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LevelButton extends StatelessWidget {
  final String asset;
  final bool enabled;
  final VoidCallback? onTap;

  const LevelButton({
    super.key,
    required this.asset,
    this.enabled = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      height: 80.h,
      child: Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: onTap,
              child: Image.asset(
                asset,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned.fill(
            child: Visibility(
              visible: enabled,
              child: Image.asset(
                asset,
                fit: BoxFit.contain,
                color: Colors.black.withOpacity(0.49),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
