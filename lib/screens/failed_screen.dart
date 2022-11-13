import 'package:crystal_memories/commons/text_style_helper.dart';
import 'package:crystal_memories/commons/theme_helper.dart';
import 'package:crystal_memories/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FailedScreen extends StatelessWidget {
  const FailedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: SizedBox(
              height: 56.h,
              child: AppBarWidget(
                onBackTap: () => _showDialog(context),
              ),
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
            child: Center(
              child: Text(
                'GAME\nOVER',
                style: TextStyleHelper.helper6,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 63.h),
          MainButton(
            text: 'TRY AGAIN',
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

  Future<void> _showDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(
          'Exit the game',
          style: TextStyleHelper.helper12,
        ),
        content: Text(
          'Are you sure you want to exit the\ngame?',
          style: TextStyleHelper.helper13,
        ),
        actions: [
          CupertinoDialogAction(
            child: Text(
              'Cancel',
              style: TextStyleHelper.helper12.copyWith(
                color: const Color(0xFF007AFF),
                letterSpacing: -0.408,
              ),
            ),
          ),
          CupertinoDialogAction(
            child: Text(
              'Exit',
              style: TextStyleHelper.helper12.copyWith(
                color: const Color(0xFF007AFF),
                letterSpacing: -0.408,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
