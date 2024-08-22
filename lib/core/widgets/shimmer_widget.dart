import 'package:flutter/material.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final Widget child;
  const ShimmerWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorManager.grey5,
      highlightColor: ColorManager.grey6,
      child: child,
    );
  }
}
