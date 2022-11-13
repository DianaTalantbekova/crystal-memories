import 'package:crystal_memories/widgets/coins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    this.onBackTap,
  }) : super(key: key);
  final VoidCallback? onBackTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        onBackTap == null
            ? const SizedBox()
            : GestureDetector(
              onTap: onBackTap,
              child: SizedBox(
                  width: 32.w,
                  height: 30.h,
                  child: Image.asset(
                    'assets/png/icons/arrow_back.png',
                    fit: BoxFit.cover,
                  ),
                ),
            ),
        const Coins(coins: 12345),
      ],
    );
  }
}
