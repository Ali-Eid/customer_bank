import 'package:flutter/material.dart';

import '../constants/values_manager.dart';
import '../themes/color_manager.dart';

class CustomErrorWidget extends StatelessWidget {
  final String message;
  final void Function()? onPressed;
  const CustomErrorWidget({super.key, required this.message, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            message,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: AppSizeH.s10),
          IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.refresh,
                color: ColorManager.primary,
                size: AppSizeSp.s16,
              ))
        ],
      ),
    );
  }
}
