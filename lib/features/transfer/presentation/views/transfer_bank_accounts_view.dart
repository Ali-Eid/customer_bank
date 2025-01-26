import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/bases/enums/type_transfer.dart';
import '../../../../core/cache/app_preferences.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/routers/routes_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/bottom_sheet_base_widget.dart';
import '../../../../core/widgets/toast_widget.dart';
import '../../../accounts/presentation/blocs/my_accounts_bloc/my_accounts_bloc.dart';
import '../../../accounts/presentation/widgets/drop_down_account_widget.dart';
import '../../../auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import '../../../splash/presentation/blocs/app_bloc/app_bloc.dart';
import '../../domain/models/inputs_models/input_transfer_model.dart';
import '../blocs/input_transfer_cubit/input_transfer_cubit.dart';
import '../blocs/transfer_bloc/transfer_bloc.dart';
import 'transfer_my_accounts_view.dart';

class TransferBankAccountsView extends StatefulWidget {
  const TransferBankAccountsView({super.key});

  @override
  State<TransferBankAccountsView> createState() =>
      _TransferBankAccountsViewState();
}

class _TransferBankAccountsViewState extends State<TransferBankAccountsView> {
  late TransferBloc transferBloc;
  late InputTransferCubit inputTransferCubit;

  final toAccountNoController = TextEditingController();
  final amountController = TextEditingController();
  final noteController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    transferBloc = instance<TransferBloc>();
    inputTransferCubit = InputTransferCubit(0);
    if (context.read<MyAccountsBloc>().accounts.isEmpty) {
      context.read<MyAccountsBloc>().add(MyAccountsEvent.getMyAccounts(
          customerId: context.read<AppBloc>().user?.customerId ?? 0));
    } else {
      context.read<MyAccountsBloc>().add(MyAccountsEvent.getMyAccounts(
          customerId: context.read<AppBloc>().user?.customerId ?? 0,
          isLoading: false));
      inputTransferCubit.setAccounts(context.read<MyAccountsBloc>().accounts);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Internal Transfer",
          ),
        ),
        body: BlocListener(
          bloc: transferBloc,
          listener: (context, TransferState state) {
            state.mapOrNull(
              successConfirmInternalTransfer: (value) {
                context.read<MyAccountsBloc>().add(
                    MyAccountsEvent.getMyAccounts(
                        customerId: instance<AppPreferences>()
                                .getUserInfo()
                                ?.customerId ??
                            0));
                showToast(context: context, message: value.confirm.message);
                context.pop();
                context.goNamed(RoutesNames.transferRoute);
              },
              error: (value) {
                context.pop();
                showToast(
                    context: context,
                    message: value.message,
                    color: ColorManager.persimmon);
              },
              successStoreInternalTransfer: (value) {
                showMyBottomSheet(
                    context,
                    ConfirmTransferWidget(
                      label: "Confirm Internal",
                      type: TypeTransfer.internal,
                      model: value.store.data,
                      transferBloc: transferBloc,
                    ),
                    isDismissible: false,
                    enableDrag: false);
              },
            );
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
                    child: BlocConsumer(
                      listener: (context, MyAccountsState state) {
                        state.mapOrNull(
                          loaded: (value) {
                            inputTransferCubit.setAccounts(
                                context.read<MyAccountsBloc>().accounts);
                          },
                        );
                      },
                      bloc: context.read<MyAccountsBloc>(),
                      builder: (context, state) {
                        return context.read<MyAccountsBloc>().accounts.isEmpty
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : BlocBuilder(
                                bloc: inputTransferCubit,
                                builder: (context, state) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: AppSizeH.s16),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            DropDownAccountWidget(
                                              items: inputTransferCubit
                                                  .fromAccounts,
                                              label: "Sender account",
                                              onChanged: (account) {
                                                inputTransferCubit
                                                    .setFromAccount(account);
                                              },
                                              validator: (value) {
                                                if (value == null) {
                                                  return "Please select the sender account";
                                                }
                                                return null;
                                              },
                                            ),
                                            SizedBox(height: AppSizeH.s24),
                                            // DropDownAccountWidget(
                                            //   items:
                                            //       inputTransferCubit.toAccounts,
                                            //   label: "Recipient account",
                                            //   onChanged: (account) {
                                            //     inputTransferCubit
                                            //         .setToAccount(account);
                                            //   },
                                            //   validator: (value) {
                                            //     if (value == null) {
                                            //       return "Please select the recipient account";
                                            //     }
                                            //     return null;
                                            //   },
                                            // ),
                                            TextFormField(
                                              controller: toAccountNoController,
                                              keyboardType:
                                                  TextInputType.number,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineLarge,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Please enter the recipient account';
                                                }
                                                return null;
                                              },
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              decoration: const InputDecoration(
                                                  hintText:
                                                      "Recipient account"),
                                            ),

                                            SizedBox(height: AppSizeH.s24),
                                            TextFormField(
                                              controller: amountController,
                                              keyboardType:
                                                  TextInputType.number,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineLarge,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Please enter amount';
                                                }
                                                return null;
                                              },
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              decoration: const InputDecoration(
                                                  hintText: "Amount"),
                                            ),
                                            SizedBox(height: AppSizeH.s24),
                                            TextFormField(
                                              readOnly: true,
                                              controller: TextEditingController(
                                                  text: "US Dollar"),
                                              keyboardType: TextInputType.text,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineLarge,
                                              decoration: const InputDecoration(
                                                  hintText: "Currency"),
                                            ),
                                            SizedBox(height: AppSizeH.s24),
                                            TextFormField(
                                              controller: noteController,
                                              keyboardType: TextInputType.text,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineLarge,
                                              decoration: const InputDecoration(
                                                  hintText: "Note"),
                                            ),
                                            SizedBox(height: AppSizeH.s32),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: BlocBuilder(
                                              bloc: transferBloc,
                                              builder: (context,
                                                  TransferState state) {
                                                return state.maybeMap(
                                                  loading: (value) =>
                                                      const LinearProgressIndicator(),
                                                  orElse: () {
                                                    return ElevatedButton(
                                                      onPressed: () {
                                                        if (_formKey
                                                            .currentState!
                                                            .validate()) {
                                                          transferBloc.add(
                                                            TransferEvent
                                                                .storeInternalTransferMyAccounts(
                                                              input: InputTransferModel(
                                                                  fromAccount:
                                                                      inputTransferCubit
                                                                              .fromAccount
                                                                              ?.accountNumber ??
                                                                          "",
                                                                  toAccount:
                                                                      toAccountNoController
                                                                          .text,
                                                                  amount: int.parse(
                                                                      amountController
                                                                          .text),
                                                                  currencyCode:
                                                                      "US Dollar",
                                                                  note:
                                                                      noteController
                                                                          .text),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      child:
                                                          const Text("Confirm"),
                                                    );
                                                  },
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
                              );
                      },
                    ),
                  ),
                ),
              ),
            );
          }),
        ));
  }
}
