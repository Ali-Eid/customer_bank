import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../constants/values_manager.dart';
import '../themes/color_manager.dart';

class DropDownStringWidget extends StatefulWidget {
  final List<String> items;
  final String? selectedValue;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final String label;

  const DropDownStringWidget(
      {super.key,
      required this.items,
      this.selectedValue,
      this.onChanged,
      required this.label,
      this.validator});

  @override
  State<DropDownStringWidget> createState() => _DropDownStringWidgetState();
}

class _DropDownStringWidgetState extends State<DropDownStringWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: 0, horizontal: AppSizeW.s3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
        ),
        // Add more decoration..
      ),
      hint: Text(widget.selectedValue ?? widget.label,
          style: Theme.of(context).textTheme.headlineLarge),
      items: widget.items
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ))
          .toList(),
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: widget.onChanged,
      iconStyleData: IconStyleData(
        icon: Icon(
          Icons.arrow_drop_down,
          color: ColorManager.grey2,
        ),
        iconSize: AppSizeSp.s24,
      ),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
        ),
      ),
      menuItemStyleData: MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s8),
      ),
    );
  }
}
