import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/assets_manager.dart';
import '../constants/values_manager.dart';

class LoadingWidget extends StatelessWidget {
  final double? height;
  final double? width;
  const LoadingWidget({
    super.key,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return LottieBuilder.asset(
      JsonAssets.loading_json,
      height: height ?? AppSizeH.s40,
      width: width,
    );
  }
}
