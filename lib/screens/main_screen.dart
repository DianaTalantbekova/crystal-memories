import 'package:crystal_memories/commons/text_style_helper.dart';
import 'package:crystal_memories/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/png/background/bg_image.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: _buildBody(context),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildBody(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(top: 110.h),
    child: Column(
      children: [
        Image.asset(
          'assets/png/girl2.png',
          width: 349.w,
          height: 262.h,
          fit: BoxFit.cover,
        ),
        MainButton(
          onTap: () => context.go('/level_screen'),
          text: 'PLAY',
          textStyle: TextStyleHelper.helper6,
        ),
        SizedBox(height: 29.h),
        MainButton(
          onTap: () {},
          text: 'SHOP',
          textStyle: TextStyleHelper.helper6,
        ),
        SizedBox(height: 29.h),
        MainButton(
          onTap: () {},
          text: 'SETTINGS',
          textStyle: TextStyleHelper.helper6,
        ),
      ],
    ),
  );
  
}
