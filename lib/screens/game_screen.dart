import 'dart:math';
import 'dart:ui';
import 'package:crystal_memories/commons/theme_helper.dart';
import 'package:crystal_memories/widgets/hint_button.dart';
import 'package:crystal_memories/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper.pink.withOpacity(0.01),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/png/background/bg_lvl3.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2.5.r,
                sigmaY: 2.5.r,
              ),
              child: Container(color: Colors.transparent),
            ),
          ),
          SafeArea(
            child: _buildBody(),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    final length = 7;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        SizedBox(height: 29.h),
        Padding(
          padding: EdgeInsets.only(
            right: 18.w,
            left: 16.w,
          ),
          child: const HintButton(),
        ),
        SizedBox(height: 55.h),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            itemCount: pow(length, 2).toInt(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: length,
              crossAxisSpacing: 9.r,
              mainAxisSpacing: 9.r,
              childAspectRatio: 0.96,
            ),
            itemBuilder: (context, index) {
              return Image.asset(
                'assets/png/packs/pack2/crystal1.png',
                fit: BoxFit.contain,
              );
            },
          ),
        ),
      ],
    );
  }
}
