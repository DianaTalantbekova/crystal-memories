import 'package:crystal_memories/commons/text_style_helper.dart';
import 'package:crystal_memories/commons/theme_helper.dart';
import 'package:crystal_memories/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: SizedBox(
              height: 56.h,
              child: const AppBarWidget(),
            ),
          ),
          SizedBox(height: 101.h),
          Container(
            width: 327.w,
            height: 251.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              color: ThemeHelper.gray.withOpacity(0.59),
            ),
            child: Column(
              children: [
                SizedBox(height: 48.h),
                Text(
                  'LEVEL\nCOMPLETED',
                  style: TextStyleHelper.helper6,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 52.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '+2000',
                      style: TextStyleHelper.helper4,
                    ),
                    SizedBox(width: 8.w),
                    SizedBox(
                      width: 32.w,
                      height: 32.h,
                      child: Image.asset(
                        'assets/png/icons/econ.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 63.h),
          MainButton(
            text: 'NEXT LEVEL',
            textStyle: TextStyleHelper.helper6,
          ),
          SizedBox(height: 32.h),
          MainButton(
            text: 'BACK',
            textStyle: TextStyleHelper.helper6,
          ),
        ],
      ),
    );
  }
}
