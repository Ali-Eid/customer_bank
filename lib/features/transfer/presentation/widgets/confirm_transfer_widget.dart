import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/bases/enums/type_transfer.dart';
import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../auth/presentation/blocs/input_otp_cubit/input_otp_cubit.dart';
import '../../../auth/presentation/widgets/otp_input_widget.dart';
import '../../domain/models/inputs_models/input_confirm_transfer_model/input_confirm_transfer_model.dart';
import '../../domain/models/transfere_model/transfere_model.dart';
import '../blocs/transfer_bloc/transfer_bloc.dart';
import '../views/transfer_my_accounts_view.dart';

class ConfirmTransferWidget extends StatefulWidget {
  final StoreTransferModel model;
  final String label;
  final TypeTransfer type;
  final TransferBloc transferBloc;
  const ConfirmTransferWidget({
    super.key,
    required this.model,
    required this.transferBloc,
    required this.label,
    required this.type,
  });

  @override
  State<ConfirmTransferWidget> createState() => _ConfirmTransferWidgetState();
}

class _ConfirmTransferWidgetState extends State<ConfirmTransferWidget> {
  late InputOtpCubit inputOtpCubit;
  @override
  void initState() {
    widget.model.withOtp ? inputOtpCubit = InputOtpCubit(0) : null;
    super.initState();
  }

  @override
  void dispose() {
    widget.model.withOtp ? inputOtpCubit.close() : null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: AppSizeH.s8, horizontal: AppSizeW.s16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.label,
                  style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(height: AppSizeH.s16),
              LottieBuilder.asset(
                JsonAssets.lcoalTransfer,
                height: AppSizeH.s100,
              ),
              SizedBox(height: AppSizeH.s16),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSizeR.s6)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: AppSizeH.s8, horizontal: AppSizeW.s16),
                    child: Column(
                        spacing: AppSizeH.s15,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: AppSizeH.s10),
                          BuildInfoRow(
                              label: AppStrings().fromAccountNo,
                              value: widget.model.fromAccountNo.accountNumber),
                          Divider(height: AppSizeH.s1),
                          BuildInfoRow(
                              label: AppStrings().toAccountNo,
                              value: widget.model.toAccountNo.accountNumber),
                          Divider(height: AppSizeH.s1),
                          BuildInfoRow(
                              label: "${AppStrings().amount}:",
                              value: "${widget.model.amount}"),
                          Divider(height: AppSizeH.s1),
                          widget.model.note.isEmpty
                              ? const SizedBox()
                              : BuildInfoRow(
                                  label: "${AppStrings().note}:",
                                  value: widget.model.note),
                          widget.model.note.isEmpty
                              ? const SizedBox()
                              : Divider(height: AppSizeH.s1),
                          widget.model.withOtp
                              ? Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(AppStrings().enterOtp,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge!
                                            .copyWith(
                                                fontWeight: FontWeight.w700)),
                                    SizedBox(height: AppSizeH.s16),
                                    OtpInputWidget(
                                      inputOtpCubit: inputOtpCubit,
                                      onSubmit: (value) {
                                        widget.transferBloc.add(TransferEvent
                                            .confirmLocalTransferMyAccounts(
                                                input:
                                                    InputConfirmTransferModel(
                                                        refId:
                                                            widget.model.refId,
                                                        otp: value)));
                                      },
                                    ),
                                    SizedBox(height: AppSizeH.s16),
                                    Divider(height: AppSizeH.s1),
                                    SizedBox(height: AppSizeH.s16),
                                  ],
                                )
                              : const SizedBox()
                        ]),
                  )),
              SizedBox(height: AppSizeH.s16),
              BlocBuilder(
                bloc: widget.transferBloc,
                builder: (context, TransferState state) {
                  return state.maybeMap(
                    loading: (value) => Padding(
                      padding: EdgeInsets.symmetric(vertical: AppSizeH.s16),
                      child: const LoadingWidget(),
                    ),
                    orElse: () {
                      return Row(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(ColorManager.white),
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(AppSizeR.s8),
                                        side: BorderSide(
                                            color: ColorManager.persimmon)))),
                            onPressed: () {
                              context.pop();
                            },
                            child: Text(
                              AppStrings().back,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(color: ColorManager.persimmon),
                            ),
                          ),
                          SizedBox(width: AppSizeW.s8),
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () {
                                  if (widget.model.withOtp) {
                                    if (inputOtpCubit.otpCode.isNotEmpty &&
                                        inputOtpCubit.otpCode.length == 6) {
                                      widget.type == TypeTransfer.local
                                          ? widget.transferBloc.add(
                                              TransferEvent.confirmLocalTransferMyAccounts(
                                                  input: InputConfirmTransferModel(
                                                      refId: widget.model.refId,
                                                      otp: widget.model.withOtp
                                                          ? inputOtpCubit
                                                              .otpCode
                                                          : null)))
                                          : widget.transferBloc.add(TransferEvent
                                              .confirmInternalTransferMyAccounts(
                                                  input: InputConfirmTransferModel(
                                                      refId: widget.model.refId,
                                                      otp: widget.model.withOtp
                                                          ? inputOtpCubit
                                                              .otpCode
                                                          : null)));
                                    }
                                  } else {
                                    widget.type == TypeTransfer.local
                                        ? widget.transferBloc.add(TransferEvent
                                            .confirmLocalTransferMyAccounts(
                                                input: InputConfirmTransferModel(
                                                    refId: widget.model.refId,
                                                    otp: widget.model.withOtp
                                                        ? inputOtpCubit.otpCode
                                                        : null)))
                                        : widget.transferBloc.add(TransferEvent
                                            .confirmInternalTransferMyAccounts(
                                                input: InputConfirmTransferModel(
                                                    refId: widget.model.refId,
                                                    otp: widget.model.withOtp
                                                        ? inputOtpCubit.otpCode
                                                        : null)));
                                  }
                                },
                                child: Text(AppStrings().confirm)),
                          )
                        ],
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
