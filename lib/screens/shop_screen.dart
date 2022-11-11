import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:crystal_memories/commons/text_style_helper.dart';
import 'package:crystal_memories/commons/theme_helper.dart';
import 'package:crystal_memories/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/png/background/bg_image.png',
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
        SizedBox(height: 193.h),
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 251.h,
            viewportFraction: 0.9146,
          ),
          itemCount: 5,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
            return _carouselItem();
          },
        )
      ],
    );
  }

  Widget _carouselItem() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Container(
        // width: 327.w,
        decoration: BoxDecoration(
          color: ThemeHelper.purple.withOpacity(0.69),
          borderRadius: BorderRadius.circular(24.r),
          border: Border.all(
            width: 2.r,
            color: ThemeHelper.white,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 32.w,
              height: 32.h,
              child: Image.asset(
                'assets/png/icons/hint_icon.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 16.w),
            Text('Hint', style: TextStyleHelper.helper9),
            SizedBox(width: 160.w),
            Text('X16', style: TextStyleHelper.helper10),
          ],
        ),
      ),
    );
  }
}
