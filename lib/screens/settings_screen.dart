import 'dart:ui';

import 'package:crystal_memories/commons/text_style_helper.dart';
import 'package:crystal_memories/widgets/app_bar_widget.dart';
import 'package:crystal_memories/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2.5.r,
              sigmaY: 2.5.r,
            ),
            child: Container(color: Colors.transparent),
          ),
          SafeArea(
            child: _buildBody(),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 10.w,
          ),
          child: SizedBox(
            height: 56.h,
            child: const AppBarWidget(),
          ),
        ),
        SizedBox(height: 102.h),
        MainButton(
          onTap: (){},
          text: 'PREMIUM',
          textStyle: TextStyleHelper.helper6,
        ),
        SizedBox(height: 23.h),
        MainButton(
          onTap: (){},
          text: 'PRIVACY',
          textStyle: TextStyleHelper.helper6,
        ),
        SizedBox(height: 23.h),
        MainButton(
          onTap: (){},
          text: 'TERMS',
          textStyle: TextStyleHelper.helper6,
        ),
        SizedBox(height: 23.h),
        MainButton(
          onTap: (){},
          text: 'SUPPORT',
          textStyle: TextStyleHelper.helper6,
        ),
      ],
    );
  }
}
