import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';

class DropDownStaticTextModelWidget extends StatefulWidget {
  final List<StaticTextModel> items;
  final StaticTextModel? selectedValue;
  final void Function(StaticTextModel?)? onChanged;
  final String? Function(StaticTextModel?)? validator;
  final String label;
  const DropDownStaticTextModelWidget(
      {super.key,
      required this.items,
      this.selectedValue,
      this.onChanged,
      this.validator,
      required this.label});

  @override
  State<DropDownStaticTextModelWidget> createState() =>
      _DropDownStaticTextModelWidgetState();
}

class _DropDownStaticTextModelWidgetState
    extends State<DropDownStaticTextModelWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<StaticTextModel>(
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: 0, horizontal: AppSizeW.s3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
        ),
        // Add more decoration..
      ),
      hint: Text(widget.selectedValue?.text ?? widget.label,
          style: Theme.of(context).textTheme.headlineLarge),
      items: widget.items
          .map((item) => DropdownMenuItem<StaticTextModel>(
                value: item,
                child: Text(
                  item.text,
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
