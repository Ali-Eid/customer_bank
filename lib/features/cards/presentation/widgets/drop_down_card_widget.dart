import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fs_bank/features/cards/domain/models/card_model/card_model.dart';

import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';

class DropDownCardWidget extends StatefulWidget {
  final List<CardModel> items;
  final CardModel? selectedValue;
  final void Function(CardModel?)? onChanged;
  final String? Function(CardModel?)? validator;
  final String label;
  const DropDownCardWidget(
      {super.key,
      required this.items,
      this.selectedValue,
      this.onChanged,
      this.validator,
      required this.label});

  @override
  State<DropDownCardWidget> createState() => _DropDownCardWidgetState();
}

class _DropDownCardWidgetState extends State<DropDownCardWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<CardModel>(
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: 0, horizontal: AppSizeW.s3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
        ),
        // Add more decoration..
      ),
      hint: Text(widget.selectedValue?.cardNumber ?? widget.label,
          style: Theme.of(context).textTheme.headlineLarge),
      items: widget.items
          .map((item) => DropdownMenuItem<CardModel>(
                value: item,
                child: Text(
                  item.cardNumber,
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
