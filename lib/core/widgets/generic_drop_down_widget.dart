import 'package:flutter/material.dart';
import 'package:fs_bank/core/widgets/loading_widget.dart';
import 'package:lottie/lottie.dart';

import '../constants/assets_manager.dart';
import '../constants/values_manager.dart';

class GenericDropdownField<T> extends StatelessWidget {
  final List<T> items;
  final T? selectedValue;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final String? Function(T?)? validator;
  final ValueChanged<T?>? onChanged;
  final String? Function(T)? itemToString;
  final bool isLoading;
  final double? menuMaxHeight;

  const GenericDropdownField({
    super.key,
    required this.items,
    this.selectedValue,
    this.hintText,
    this.hintStyle,
    this.textStyle,
    this.validator,
    this.onChanged,
    required this.itemToString,
    this.isLoading = false,
    this.menuMaxHeight,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.headlineLarge,
        contentPadding: EdgeInsets.symmetric(horizontal: AppSizeW.s12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s8),
        ),
      ),
      isExpanded: true,
      isDense: true,
      // hint: Align(
      //   alignment: AlignmentDirectional.centerStart,
      //   child: Text(
      //     hintText ?? '',
      //     style: hintStyle ?? Theme.of(context).textTheme.headlineSmall,
      //   ),
      // ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      icon: isLoading
          ? const LoadingWidget()
          : Icon(
              Icons.arrow_drop_down,
              color: Theme.of(context).iconTheme.color,
            ),
      style: Theme.of(context).textTheme.headlineLarge,
      items: items.map((item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(
            "${itemToString!(item)}",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        );
      }).toList(),
      onChanged: onChanged,
      value: selectedValue,
      validator: validator,
      alignment: AlignmentDirectional.centerStart, menuMaxHeight: menuMaxHeight,
    );
  }
}
