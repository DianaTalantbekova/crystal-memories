import 'package:crystal_memories/commons/text_style_helper.dart';
import 'package:crystal_memories/commons/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Coins extends StatelessWidget {
  final int coins;
  const Coins({super.key, required this.coins});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 4.w),
      width: 143.r,
      height: 32.r,
      decoration: BoxDecoration(
        color: ThemeHelper.deepPurple,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          const Spacer(),
          Text(
            '$coins',
            style: TextStyleHelper.helper4,
          ),
          SizedBox(width: 8.w),
          SizedBox(
            width: 24.w,
            height: 24.h,
            child: Image.asset('assets/png/icons/econ.png'),
          ),
        ],
      ),
    );
  }
}
