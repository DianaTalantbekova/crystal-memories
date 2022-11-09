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
}

Widget _buildBody() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      SizedBox(height: 28.h),
      Text(
        'L e v e l S'.toUpperCase(),
        style: TextStyleHelper.helper6,
      ),
      SizedBox(height: 128.h),
      Expanded(
        child: GridView.builder(
          itemCount: 9,
          padding: EdgeInsets.symmetric(horizontal: 52.w),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 17.r,
            mainAxisSpacing: 18.r,
            // childAspectRatio: 103 / 131,
          ),
          itemBuilder: (context, index) {
            return const LevelButton(asset: 'assets/png/levels/lvl1.png');
          },
        ),
      ),
      LevelButton(asset: 'assets/png/levels/lvl10.png')
    ],
  );
}
