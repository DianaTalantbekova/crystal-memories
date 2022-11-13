import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:crystal_memories/commons/text_style_helper.dart';
import 'package:crystal_memories/commons/theme_helper.dart';
import 'package:crystal_memories/models/crystal_info.dart';
import 'package:crystal_memories/utils/crystals.dart';
import 'package:crystal_memories/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int _selected = 0;

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
            initialPage: 0,
            height: 251.h,
            viewportFraction: 0.9146,
            enableInfiniteScroll: false,
            onPageChanged: _onPageChanged,
          ),
          itemCount: crystals.length + 1,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
            if (itemIndex == 0) {
              return _hintWidget(selected: itemIndex == _selected);
            }

            return _crystalWidget(
              selected: itemIndex == _selected,
              crystalInfo: crystals[itemIndex - 1],
            );
          },
        ),
      ],
    );
  }

  Widget _hintWidget({required bool selected}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Container(
        decoration: BoxDecoration(
          color: ThemeHelper.purple.withOpacity(0.69),
          borderRadius: BorderRadius.circular(24.r),
          border: selected
              ? Border.all(
                  width: 2.r,
                  color: ThemeHelper.white,
                )
              : null,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 16.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                  const Spacer(),
                  Text('X16', style: TextStyleHelper.helper10),
                ],
              ),
              SizedBox(height: 8.h),
              SizedBox(
                width: 247.w,
                height: 123.h,
                child: Text(
                  'Additional display of combinations (that is, if you click during the game, the current combination will appear again (you can use it 1 time per level))',
                  style: TextStyleHelper.helper11,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '2000',
                    style:
                        TextStyleHelper.helper4.copyWith(fontFamily: 'Inter'),
                  ),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 24.w,
                    height: 24.h,
                    child: Image.asset('assets/png/icons/econ.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crystalWidget({
    required bool selected,
    required CrystalInfo crystalInfo,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Container(
        decoration: BoxDecoration(
          color: ThemeHelper.purple.withOpacity(0.69),
          borderRadius: BorderRadius.circular(24.r),
          border: selected
              ? Border.all(
                  width: 2.r,
                  color: ThemeHelper.white,
                )
              : null,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 32.w,
                      height: 32.h,
                      child: Image.asset(
                        'assets/png/icons/gift.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Text(
                      '${crystalInfo.name}:',
                      style: TextStyleHelper.helper9,
                    ),
                    const Spacer(),
                    // Text('X16', style: TextStyleHelper.helper10),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              SizedBox(
                height: 134.h,
                child: Image.asset(
                  crystalInfo.asset,
                  fit: BoxFit.contain,
                ),
              ),
              const Spacer(),
              _buildIcon(
                price: crystalInfo.price,
                canChoose: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon({
    required int price,
    bool canChoose = false,
    bool chosen = false,
  }) {
    if (canChoose) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: 24.w,
            height: 24.h,
            child: Image.asset(
              chosen
                  ? 'assets/png/icons/checkbox1.png'
                  : 'assets/png/icons/checkbox.png',
            ),
          ),
        ),
      );
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            price.toString(),
            style: TextStyleHelper.helper4.copyWith(fontFamily: 'Inter'),
          ),
          SizedBox(width: 8.w),
          SizedBox(
            width: 24.w,
            height: 24.h,
            child: Image.asset('assets/png/icons/econ.png'),
          ),
        ],
      ),
    );
  }

  _onPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      _selected = index;
    });
  }
}
