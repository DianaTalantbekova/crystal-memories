import 'package:crystal_memories/commons/text_style_helper.dart';
import 'package:crystal_memories/widgets/coins.dart';
import 'package:crystal_memories/widgets/level_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key});

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 32.w,
                  height: 30.h,
                  child: Image.asset(
                    'assets/png/icons/arrow_back.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const Coins(coins: 12345),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.h),
        Text(
          'L e v e l S'.toUpperCase(),
          style: TextStyleHelper.helper6,
        ),
        SizedBox(height: 128.h),
        SizedBox(
          height: 272.r,
          child: GridView.builder(
            itemCount: 9,
            padding: EdgeInsets.symmetric(horizontal: 52.w),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 16.r,
              mainAxisSpacing: 16.r,
            ),
            itemBuilder: (context, index) {
              return LevelButton(
                asset: 'assets/png/levels/lvl${index + 1}.png',
                enabled: 0 < index,
                onTap: () => _onTap(index),
              );
            },
          ),
        ),
        SizedBox(height: 16.r),
        LevelButton(
          asset: 'assets/png/levels/lvl10.png',
          enabled: true,
          onTap: () => _onTap(9),
        ),
      ],
    );
  }

  void _onTap(int index) {}
}
