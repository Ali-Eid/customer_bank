import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/core/widgets/generic_drop_down_widget.dart';
import 'package:fs_bank/core/widgets/loading_widget.dart';
import 'package:fs_bank/features/transfer/domain/models/transfer_sygs_model/input_transfer_sygs_model.dart';
import 'package:fs_bank/features/transfer/presentation/blocs/transfer_sygs_bloc/transfer_sygs_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../../../core/app/depndency_injection.dart';
import '../../../../core/bases/enums/type_transfer.dart';
import '../../../../core/cache/app_preferences.dart';
import '../../../../core/cache/keys_preferences.dart';
import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/routers/routes_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/bottom_sheet_base_widget.dart';
import '../../../../core/widgets/toast_widget.dart';
import '../../../accounts/domain/models/account_model/account_model.dart';
import '../../../accounts/presentation/widgets/drop_down_account_widget.dart';
import '../../../auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import '../../../splash/presentation/blocs/app_bloc/app_bloc.dart';
import '../../domain/models/inputs_models/input_transfer_model.dart';
import '../blocs/input_transfer_cubit/input_transfer_cubit.dart';
import '../blocs/transfer_bloc/transfer_bloc.dart';
import 'transfer_my_accounts_view.dart';

class TransferSygsView extends StatefulWidget {
  const TransferSygsView({super.key});

  @override
  State<TransferSygsView> createState() => _TransferSygsViewState();
}

class _TransferSygsViewState extends State<TransferSygsView> {
  late InputTransferCubit inputTransferCubit;
  late TransferSygsBloc transferSygsBloc;
  late final amountController = TextEditingController();
  final noteController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    transferSygsBloc = instance<TransferSygsBloc>()
      ..add(const TransferSygsEvent.getBanks())
      ..add(const TransferSygsEvent.getTransferSYGSReason());
    inputTransferCubit = InputTransferCubit(0);
    // if (context.read<MyAccountsBloc>().accounts.isEmpty) {
    //   context.read<MyAccountsBloc>().add(MyAccountsEvent.getMyAccounts(
    //       customerId: context.read<AppBloc>().user?.customerId ?? 0));
    // } else {
    //   context.read<MyAccountsBloc>().add(MyAccountsEvent.getMyAccounts(
    //       customerId: context.read<AppBloc>().user?.customerId ?? 0,
    //       isLoading: false));
    //   inputTransferCubit.setAccounts(context.read<MyAccountsBloc>().accounts);
    // }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings().transferSygs,
        ),
      ),
      body: BlocListener(
        bloc: transferSygsBloc,
        listener: (context, TransferSygsState state) {
          if (state.successSYGSTransfer) {
            showToast(
                context: context, message: state.messageSuccessSYGSTransfer);
            context.pop();
          }
          if (state.hasErrorSYGSTransfer) {
            showToast(
                context: context,
                message: state.messageErrorSYGSTransfer,
                color: ColorManager.persimmon);
          }
        },
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16).copyWith(
                bottom: MediaQuery.of(context)
                    .viewInsets
                    .bottom), // Adjusts for the keyboard
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Form(
                  key: _formKey,
                  child: BlocBuilder(
                    bloc: inputTransferCubit,
                    builder: (context, state) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: AppSizeH.s16),
                          Expanded(
                            child: Column(
                              children: [
                                GenericDropdownField<AccountModel>(
                                  items: instance<AppPreferences>()
                                      .getList<AccountModel>(
                                          KeysPreferences.PREFS_KEY_ACCOUNTS,
                                          AccountModel.fromJson),
                                  itemToString: (value) => value.accountNumber,
                                  onChanged: (account) {
                                    inputTransferCubit.setFromAccount(account);
                                  },
                                  validator: (value) {
                                    if (value == null) {
                                      return AppStrings()
                                          .pleaseSelectSenderAccount;
                                    }
                                    return null;
                                  },
                                  hintText: AppStrings().senderAccount,
                                ),
                                SizedBox(height: AppSizeH.s24),
                                TextFormField(
                                  controller:
                                      inputTransferCubit.toAccountNoController,
                                  keyboardType: TextInputType.number,
                                  style:
                                      Theme.of(context).textTheme.headlineLarge,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return AppStrings()
                                          .pleaseEnterRecipientAccount;
                                    }
                                    return null;
                                  },
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  decoration: InputDecoration(
                                      hintText: AppStrings().recipientAccount),
                                ),
                                SizedBox(height: AppSizeH.s24),
                                BlocBuilder(
                                  bloc: transferSygsBloc,
                                  builder: (context, TransferSygsState state) {
                                    return GenericDropdownField<StaticModel>(
                                        hintText: AppStrings().selectABank,
                                        validator: (value) {
                                          if (inputTransferCubit.bank == null) {
                                            return AppStrings()
                                                .pleaseSelectBank;
                                          }
                                          return null;
                                        },
                                        isLoading: state.isLoadingGetBanks,
                                        onChanged: (value) {
                                          inputTransferCubit.setBank(value);
                                        },
                                        items: state.isLoadingGetBanks
                                            ? []
                                            : state.banks,
                                        itemToString: (value) => value.name);
                                  },
                                ),
                                SizedBox(height: AppSizeH.s24),
                                BlocBuilder(
                                  bloc: transferSygsBloc,
                                  builder: (context, TransferSygsState state) {
                                    return GenericDropdownField<
                                            StaticTextModel>(
                                        hintText: AppStrings().selectReason,
                                        validator: (value) {
                                          if (inputTransferCubit.reason ==
                                              null) {
                                            return AppStrings()
                                                .pleaseSelectReason;
                                          }
                                          return null;
                                        },
                                        isLoading:
                                            state.isLoadingGetTransferReasons,
                                        onChanged: (value) {
                                          inputTransferCubit
                                              .setTransferReason(value);
                                        },
                                        items: state.isLoadingGetBanks
                                            ? []
                                            : state.transferReasons,
                                        itemToString: (value) => value.text);
                                  },
                                ),
                                SizedBox(height: AppSizeH.s24),
                                TextFormField(
                                  controller: amountController,
                                  keyboardType: TextInputType.number,
                                  style:
                                      Theme.of(context).textTheme.headlineLarge,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return AppStrings().pleaseEnterAmount;
                                    }
                                    return null;
                                  },
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  decoration: InputDecoration(
                                      hintText: AppStrings().amount),
                                ),
                                SizedBox(height: AppSizeH.s24),
                                TextFormField(
                                  readOnly: true,
                                  controller:
                                      TextEditingController(text: "US Dollar"),
                                  keyboardType: TextInputType.text,
                                  style:
                                      Theme.of(context).textTheme.headlineLarge,
                                  decoration: InputDecoration(
                                      hintText: AppStrings().currency),
                                ),
                                SizedBox(height: AppSizeH.s24),
                                TextFormField(
                                  controller: noteController,
                                  keyboardType: TextInputType.text,
                                  style:
                                      Theme.of(context).textTheme.headlineLarge,
                                  decoration: InputDecoration(
                                      hintText: AppStrings().note),
                                ),
                                SizedBox(height: AppSizeH.s32),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: BlocBuilder(
                                  bloc: transferSygsBloc,
                                  builder: (context, TransferSygsState state) {
                                    if (state.isLoadingSYGSTransfer) {
                                      return const LoadingWidget();
                                    }
                                    return ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          transferSygsBloc.add(
                                              TransferSygsEvent.transferSYGS(
                                                  input: InputTransferSygsModel(
                                                      bankId: inputTransferCubit
                                                              .bank?.id ??
                                                          0,
                                                      fromAccount:
                                                          inputTransferCubit
                                                                  .fromAccount
                                                                  ?.accountNumber ??
                                                              "",
                                                      toAccount: inputTransferCubit
                                                          .toAccountNoController
                                                          .text,
                                                      amount: int.parse(
                                                          amountController
                                                              .text),
                                                      // currencyCode:
                                                      //     "US Dollar",
                                                      reasonId:
                                                          inputTransferCubit
                                                                  .reason?.id ??
                                                              0,
                                                      note: noteController.text)));
                                        }
                                      },
                                      child: Text(AppStrings().confirm),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: AppSizeH.s24,
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
