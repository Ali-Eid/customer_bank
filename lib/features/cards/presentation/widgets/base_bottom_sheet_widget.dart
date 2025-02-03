import 'package:flutter/material.dart';

import '../../../../core/constants/values_manager.dart';

class BaseBottomSheetWidget extends StatelessWidget {
  final String title;
  final Widget child;
  const BaseBottomSheetWidget({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizeW.s16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: AppSizeH.s16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: AppSizeH.s24),
          child
        ],
      ),
    );
  }
}
