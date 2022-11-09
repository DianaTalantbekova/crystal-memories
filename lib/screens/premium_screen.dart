import 'package:crystal_memories/commons/text_style_helper.dart';
import 'package:crystal_memories/commons/theme_helper.dart';
import 'package:crystal_memories/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PremuimScreen extends StatelessWidget {
  const PremuimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/png/background/background_image.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: _buildBody(),
          ),
        ],
      ),
    );
  }
}

Widget _buildBody() {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(
          right: 9.r,
          top: 23.r,
        ),
        child: Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/png/icons/cross.png',
              width: 32.r,
              height: 32.r,
              color: ThemeHelper.white,
            ),
          ),
        ),
      ),
      SizedBox(height: 3.h),
      Image.asset(
        'assets/png/girl.png',
        width: 296.r,
        height: 247.r,
      ),
      _buildInfo(),
      SizedBox(height: 48.h),
      MainButton(
        text: 'Get premium for 0.99\$',
        textStyle: TextStyleHelper.helper4,
        onTap: () {},
      ),
      SizedBox(height: 29.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTextButton(text: 'Terms of Use'),
          _buildTextButton(text: 'Restore'),
          _buildTextButton(text: 'Privacy Policy'),
        ],
      )
    ],
  );
}

Widget _buildInfo() {
  return Container(
    width: 327.r,
    height: 251.r,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24.r),
      color: ThemeHelper.gray.withOpacity(0.59),
    ),
    child: Column(
      children: [
        SizedBox(height: 32.h),
        SizedBox(
          width: 36.w,
          height: 36.h,
          child: Image.asset(
            'assets/png/icons/loudspeaker_slash.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8.h),
        RichText(
          text: TextSpan(
            text: 'NO '.toUpperCase(),
            style: TextStyleHelper.helper1,
            children: [
              TextSpan(
                text: 'ADS'.toUpperCase(),
                style: TextStyleHelper.helper2,
              ),
            ],
          ),
        ),
        SizedBox(height: 9.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' +50.000'.toUpperCase(),
              style: TextStyleHelper.helper1.copyWith(
                height: 36 / 36,
                color: ThemeHelper.white,
              ),
            ),
            SizedBox(width: 8.w),
            SizedBox(
              width: 36.w,
              height: 36.h,
              child: Image.asset(
                'assets/png/icons/econ.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        SizedBox(height: 18.h),
        Text(
          'Access to all content from the store',
          style: TextStyleHelper.helper3,
        ),
        SizedBox(height: 8.h),
        Text(
          'All difficulty levels are open at once',
          style: TextStyleHelper.helper3,
        ),
      ],
    ),
  );
}

Widget _buildTextButton({required String text}) {
  return GestureDetector(
    onTap: () {},
    child: Stack(
      children: [
        SizedBox(
          height: 40.h,
          width: 114.w,
          child: Center(
            child: Text(
              text,
              style: TextStyleHelper.helper5,
            ),
          ),
        ),
      ],
    ),
  );
}
