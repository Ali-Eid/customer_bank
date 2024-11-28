import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/features/accounts/presentation/blocs/types_bloc/types_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/cache/app_preferences.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/toast_widget.dart';
import '../../../accounts/presentation/blocs/my_accounts_bloc/my_accounts_bloc.dart';
import '../../../accounts/presentation/widgets/drop_down_account_widget.dart';
import '../../../accounts/presentation/widgets/drop_down_static_text_model_widget.dart';
import '../../domain/models/Inputs/request_card_model/request_card_model.dart';
import '../blocs/cards_bloc/cards_bloc.dart';
import '../blocs/request_card_bloc/request_card_bloc.dart';
import '../blocs/withdrawal_bloc/withdrawal_bloc.dart';

class NewCardWidget extends StatefulWidget {
  const NewCardWidget({
    super.key,
  });

  @override
  State<NewCardWidget> createState() => _NewCardWidgetState();
}

class _NewCardWidgetState extends State<NewCardWidget> {
  final nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late RequestCardBloc requestCardBloc;
  late TypesBloc cardsTypeBloc;
  late TypesBloc beneficiaryTypeBloc;
  int? accountId;
  int? cardTypeId;
  int? beneficiaryTypeId;
  @override
  void initState() {
    requestCardBloc = instance<RequestCardBloc>();
    context.read<MyAccountsBloc>().add(MyAccountsEvent.getMyAccounts(
        customerId: instance<AppPreferences>().getUserInfo()?.customerId ?? 0,
        isLoading: false));
    context
        .read<WithdrawalBloc>()
        .add(const WithdrawalEvent.getWithDrawalValues(isLoading: false));
    cardsTypeBloc = instance<TypesBloc>()..add(const TypesEvent.getCardTypes());
    beneficiaryTypeBloc = instance<TypesBloc>()
      ..add(const TypesEvent.getBeneficiaryType());

    super.initState();
  }

  @override
  void dispose() {
    requestCardBloc.close();
    cardsTypeBloc.close();
    beneficiaryTypeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: BlocListener(
        bloc: requestCardBloc,
        listener: (context, RequestCardState state) {
          state.mapOrNull(
            success: (value) {
              context.read<CardsBloc>().add(const CardsEvent.getMyCards());
              context.pop();
              showToast(context: context, message: value.message);
            },
            error: (value) {
              showToast(
                  context: context,
                  message: value.message,
                  color: ColorManager.persimmon);
            },
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder(
              bloc: context.read<MyAccountsBloc>(),
              builder: (context, MyAccountsState state) {
                return DropDownAccountWidget(
                  items: context.read<MyAccountsBloc>().accounts,
                  label: "account",
                  onChanged: (account) {
                    accountId = account?.id;
                  },
                  validator: (value) {
                    if (value == null) {
                      return "please select an account";
                    }
                    return null;
                  },
                );
              },
            ),
            SizedBox(height: AppSizeH.s16),
            TextFormField(
              controller: nameController,
              style: Theme.of(context).textTheme.headlineLarge,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter beneficiary name';
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(hintText: "Beneficiary name"),
            ),
            SizedBox(height: AppSizeH.s16),
            BlocBuilder(
              bloc: cardsTypeBloc,
              builder: (context, TypesState state) {
                return DropDownStaticTextModelWidget(
                  items: cardsTypeBloc.cardsTypes,
                  label: "Card type",
                  onChanged: (type) {
                    cardTypeId = type?.id;
                  },
                  validator: (value) {
                    if (value == null) {
                      return "please select a card type";
                    }
                    return null;
                  },
                );
              },
            ),
            SizedBox(height: AppSizeH.s16),
            BlocBuilder(
              bloc: beneficiaryTypeBloc,
              builder: (context, TypesState state) {
                return DropDownStaticTextModelWidget(
                  items: beneficiaryTypeBloc.beneficiaryTypes,
                  label: "Beneficiary type",
                  onChanged: (type) {
                    beneficiaryTypeId = type?.id;
                  },
                  validator: (value) {
                    if (value == null) {
                      return "please select a beneficiary type";
                    }
                    return null;
                  },
                );
              },
            ),
            SizedBox(height: AppSizeH.s32),
            Row(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(ColorManager.white),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSizeR.s8),
                          side: BorderSide(color: ColorManager.persimmon)))),
                  onPressed: () {
                    context.pop();
                  },
                  child: Text(
                    "Back",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: ColorManager.persimmon),
                  ),
                ),
                SizedBox(width: AppSizeW.s8),
                Expanded(
                    child: BlocBuilder(
                  bloc: requestCardBloc,
                  builder: (context, RequestCardState state) {
                    return state.maybeMap(
                      loading: (value) {
                        return const LinearProgressIndicator();
                      },
                      orElse: () {
                        return ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                requestCardBloc.add(RequestCardEvent.newCard(
                                    request: RequestCardModel(
                                        accountId: accountId ?? 0,
                                        beneficiaryName: nameController.text,
                                        type: cardTypeId ?? 0,
                                        beneficiaryType: beneficiaryTypeId ?? 0,
                                        withdrawalValueId: context
                                            .read<WithdrawalBloc>()
                                            .valuesWithDrawal
                                            .first
                                            .id)));
                              }
                            },
                            child: const Text("Confirm"));
                      },
                    );
                  },
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
