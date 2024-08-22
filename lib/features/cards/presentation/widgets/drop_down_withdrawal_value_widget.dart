import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fs_bank/features/cards/domain/models/card_model/card_model.dart';
import 'package:fs_bank/features/cards/domain/models/withdrawel_values_model/with_drawel_values_model.dart';

import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';

class DropDownWithDrawalWidget extends StatefulWidget {
  final List<WithDrawelValuesModel> items;
  final WithDrawelValuesModel? selectedValue;
  final void Function(WithDrawelValuesModel?)? onChanged;
  final String? Function(WithDrawelValuesModel?)? validator;
  final String label;
  const DropDownWithDrawalWidget(
      {super.key,
      required this.items,
      this.selectedValue,
      this.onChanged,
      this.validator,
      required this.label});

  @override
  State<DropDownWithDrawalWidget> createState() =>
      _DropDownWithDrawalWidgetState();
}

class _DropDownWithDrawalWidgetState extends State<DropDownWithDrawalWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<WithDrawelValuesModel>(
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: 0, horizontal: AppSizeW.s3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
        ),
        // Add more decoration..
      ),
      hint: Text(widget.selectedValue?.value.toString() ?? widget.label,
          style: Theme.of(context).textTheme.headlineLarge),
      items: widget.items
          .map((item) => DropdownMenuItem<WithDrawelValuesModel>(
                value: item,
                child: Text(
                  item.value.toString(),
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
