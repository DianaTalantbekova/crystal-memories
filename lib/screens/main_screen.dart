import 'package:crystal_memories/commons/text_style_helper.dart';
import 'package:crystal_memories/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/png/background/main_background_image.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: _buildBody(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildBody() {
  return Padding(
    padding: EdgeInsets.only(top: 110.h),
    child: Column(
      children: [
        Image.asset(
          'assets/png/girl2.png',
          width: 349.r,
          height: 262.h,
        ),
        MainButton(
          onTap: () {},
          text: 'p l a y'.toUpperCase(),
          textStyle: TextStyleHelper.helper6,
        ),
        SizedBox(height: 29.h),
        MainButton(
          onTap: () {},
          text: 'S h o p'.toUpperCase(),
          textStyle: TextStyleHelper.helper6,
        ),
        SizedBox(height: 29.h),
        MainButton(
          onTap: () {},
          text: 'S e t t i n g s'.toUpperCase(),
          textStyle: TextStyleHelper.helper6,
        ),
      ],
    ),
  );
}
