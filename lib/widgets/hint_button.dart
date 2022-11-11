import 'package:bordered_text/bordered_text.dart';
import 'package:crystal_memories/commons/text_style_helper.dart';
import 'package:crystal_memories/commons/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HintButton extends StatelessWidget {
  const HintButton({
    Key? key,
  }) : super(key: key);
  final String message = 'LEFT:';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            SizedBox(
              width: 48.w,
              height: 48.h,
              child: Image.asset(
                'assets/png/icons/hint_icon.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              'X16',
              style: TextStyleHelper.helper8,
            ),
          ],
        ),
        BorderedText(
          strokeWidth: 2.r,
          strokeColor: ThemeHelper.deepPurple,
          child: Text(
            message,
            style: TextStyleHelper.helper4,
          ),
        ),
      ],
    );
  }
}
