import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';

class DropDownAccountWidget extends StatefulWidget {
  final List<AccountModel> items;
  final AccountModel? selectedValue;
  final void Function(AccountModel?)? onChanged;
  final String? Function(AccountModel?)? validator;
  final String label;
  const DropDownAccountWidget(
      {super.key,
      required this.items,
      this.selectedValue,
      this.onChanged,
      this.validator,
      required this.label});

  @override
  State<DropDownAccountWidget> createState() => _DropDownAccountWidgetState();
}

class _DropDownAccountWidgetState extends State<DropDownAccountWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<AccountModel>(
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: 0, horizontal: AppSizeW.s3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
        ),
        // Add more decoration..
      ),
      hint: Text(widget.selectedValue?.accountNumber ?? widget.label,
          style: Theme.of(context).textTheme.headlineLarge),
      items: widget.items
          .map((item) => DropdownMenuItem<AccountModel>(
                value: item,
                child: Text(
                  item.accountNumber,
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
