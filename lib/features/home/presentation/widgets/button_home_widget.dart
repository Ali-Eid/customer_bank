import 'package:flutter/material.dart';
import 'package:fs_bank/core/constants/values_manager.dart';

import '../../../../core/themes/color_manager.dart';

class ButtonHomeWidget extends StatelessWidget {
  final Color color;
  final String image;
  final String title;
  const ButtonHomeWidget(
      {super.key,
      required this.color,
      required this.image,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizeW.s16),
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: AppSizeR.s5,
            spreadRadius: 0,
            offset: const Offset(0, 0.05),
          ),
        ],
        borderRadius: BorderRadius.circular(AppSizeR.s15),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            color: Colors.white,
            height: AppSizeW.s50,
            width: AppSizeW.s50,
          ),
          SizedBox(width: AppSizeW.s8),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: AppSizeSp.s17, fontWeight: FontWeight.normal)),
            ],
          ),
        ],
      ),
    );
  }
}
