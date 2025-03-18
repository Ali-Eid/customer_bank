import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constants/assets_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/bottom_sheet_base_widget.dart';
import '../../../../core/widgets/toast_widget.dart';
import '../../../transfer/presentation/blocs/input_transfer_cubit/input_transfer_cubit.dart';
import '../blocs/bloc/beneficiary_bloc.dart';
import '../views/beneficiary_view.dart';

class SelectBeneficiaryWidget extends StatefulWidget {
  const SelectBeneficiaryWidget({super.key});

  @override
  State<SelectBeneficiaryWidget> createState() =>
      _SelectBeneficiaryWidgetState();
}

class _SelectBeneficiaryWidgetState extends State<SelectBeneficiaryWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Column(
          children: [
            SizedBox(height: AppSizeH.s16),
            Text(
              "Select a beneficiary",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: AppSizeH.s6),
            Divider(height: AppSizeH.s1),
            SizedBox(height: AppSizeH.s6),
            Expanded(
              child: BlocConsumer(
                listener: (context, BeneficiaryState state) {
                  if (state.successCreateBeneficiary) {
                    showToast(
                      context: context,
                      message: state.messageSuccess,
                    );
                    context.pop();
                  }
                  if (state.hasError) {
                    showToast(
                        context: context,
                        message: state.messageError,
                        color: ColorManager.persimmon);
                  }
                },
                bloc: context.read<BeneficiaryBloc>(),
                builder: (context, BeneficiaryState state) {
                  if (state.isLoadingGetBeneficiaries) {
                    return Center(
                        child: LottieBuilder.asset(
                      JsonAssets.loading_json,
                      height: AppSizeH.s100,
                    ));
                  }
                  return state.beneficiaries.isEmpty
                      ? const Center(
                          child: Text("no data"),
                        )
                      : ListView.builder(
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: () {
                                  context
                                          .read<InputTransferCubit>()
                                          .toAccountNoController
                                          .text =
                                      state.beneficiaries[index].accountNumber;
                                  context.pop();
                                },
                                child: BeneficiaryItemWidget(
                                    model: state.beneficiaries[index]));
                          },
                          itemCount: state.beneficiaries.length);
                },
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(AppSizeW.s16),
          child: FloatingActionButton(
            onPressed: () {
              showMyBottomSheet(
                context,
                CreateBeneficiaryWidget(
                  beneficiaryBloc: context.read<BeneficiaryBloc>(),
                ),
              );
            },
            backgroundColor: ColorManager.primary,
            child: Icon(
              Icons.add,
              color: ColorManager.secondary,
            ),
          ),
        )
      ],
    );
  }
}
