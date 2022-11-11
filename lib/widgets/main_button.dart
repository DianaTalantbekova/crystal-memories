import 'package:crystal_memories/commons/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final TextStyle textStyle;

  const MainButton({
    super.key,
    this.onTap,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 327.w,
        height: 80.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          color: ThemeHelper.purple,
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/png/wave_effect.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            Center(
              child: Text(
                text,
                style: textStyle,
              ),
            ),
            Positioned.fill(
              child: Visibility(
                visible: onTap == null,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.r),
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
