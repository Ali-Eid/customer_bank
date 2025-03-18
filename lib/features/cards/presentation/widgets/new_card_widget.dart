import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/features/accounts/presentation/blocs/types_bloc/types_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/app/depndency_injection.dart';
import '../../../../core/bases/models/static_model/static_model.dart';
import '../../../../core/cache/app_preferences.dart';
import '../../../../core/cache/keys_preferences.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/generic_drop_down_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/toast_widget.dart';
import '../../../accounts/domain/models/account_model/account_model.dart';
import '../../domain/models/Inputs/request_card_model/request_card_model.dart';
import '../blocs/cards_bloc/cards_bloc.dart';
import '../blocs/request_card_bloc/request_card_bloc.dart';

class NewCardWidget extends StatefulWidget {
  final CardsBloc cardsBloc;
  const NewCardWidget({
    super.key,
    required this.cardsBloc,
  });

  @override
  State<NewCardWidget> createState() => _NewCardWidgetState();
}

class _NewCardWidgetState extends State<NewCardWidget> {
  final nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late RequestCardBloc requestCardBloc;
  late TypesBloc typeBloc;
  int? accountId;
  int? cardTypeId;
  int? beneficiaryTypeId;
  @override
  void initState() {
    requestCardBloc = instance<RequestCardBloc>();
    typeBloc = instance<TypesBloc>()
      ..add(const TypesEvent.getCardTypes())
      ..add(const TypesEvent.getBeneficiaryType());

    super.initState();
  }

  @override
  void dispose() {
    requestCardBloc.close();
    typeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: BlocListener(
        bloc: requestCardBloc,
        listener: (context, RequestCardState state) {
          if (state.success) {
            widget.cardsBloc.add(const CardsEvent.getMyCards());
            context.pop();
            showToast(context: context, message: state.successMessage);
          }
          if (state.hasError) {
            showToast(
                context: context,
                message: state.errorMessage,
                color: ColorManager.persimmon);
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GenericDropdownField<AccountModel>(
              items: instance<AppPreferences>().getList<AccountModel>(
                  KeysPreferences.PREFS_KEY_ACCOUNTS, AccountModel.fromJson),
              itemToString: (value) => value.accountNumber,
              onChanged: (account) {
                accountId = account?.id;
              },
              validator: (value) {
                if (value == null) {
                  return AppStrings().pleaseSelectSenderAccount;
                }
                return null;
              },
              hintText: AppStrings().senderAccount,
            ),
            SizedBox(height: AppSizeH.s16),
            TextFormField(
              controller: nameController,
              style: Theme.of(context).textTheme.headlineLarge,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return AppStrings().pleaseEnterBeneficiaryName;
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration:
                  InputDecoration(hintText: AppStrings().beneficiaryName),
            ),
            SizedBox(height: AppSizeH.s16),
            BlocBuilder(
              bloc: typeBloc,
              builder: (context, TypesState state) {
                return GenericDropdownField<StaticTextModel>(
                  itemToString: (value) => value.text,
                  items: (state.isLoadingBeneficiaryType &&
                          state.cardTypes.isEmpty)
                      ? []
                      : state.cardTypes,
                  isLoading:
                      state.isLoadingCardTypes && state.cardTypes.isEmpty,
                  onChanged: (value) {
                    cardTypeId = value?.id;
                  },
                  hintText: AppStrings().cardType,
                  validator: (value) {
                    if (value == null) {
                      return AppStrings().pleaseSelectCardType;
                    }
                    return null;
                  },
                );
              },
            ),
            SizedBox(height: AppSizeH.s16),
            BlocBuilder(
              bloc: typeBloc,
              builder: (context, TypesState state) {
                return GenericDropdownField<StaticTextModel>(
                  items: (state.isLoadingBeneficiaryType &&
                          state.beneficiaryType.isEmpty)
                      ? []
                      : state.beneficiaryType,
                  isLoading: state.isLoadingBeneficiaryType &&
                      state.beneficiaryType.isEmpty,
                  itemToString: (value) => value.text,
                  onChanged: (value) {
                    beneficiaryTypeId = value?.id;
                  },
                  hintText: AppStrings().beneficiaryType,
                  validator: (value) {
                    if (value == null) {
                      return AppStrings().pleaseSelectbeneficiaryType;
                    }
                    return null;
                  },
                );
              },
            ),
            SizedBox(height: AppSizeH.s32),
            BlocBuilder(
              bloc: requestCardBloc,
              builder: (context, RequestCardState state) {
                if (state.isLoading) {
                  return const LoadingWidget();
                }
                return Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(ColorManager.white),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppSizeR.s8),
                              side:
                                  BorderSide(color: ColorManager.persimmon)))),
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
                              if (_formKey.currentState!.validate()) {
                                requestCardBloc.add(RequestCardEvent.newCard(
                                    request: RequestCardModel(
                                        accountId: accountId ?? 0,
                                        beneficiaryName: nameController.text,
                                        type: cardTypeId ?? 0,
                                        beneficiaryType:
                                            beneficiaryTypeId ?? 0)));
                              }
                            },
                            child: Text(AppStrings().confirm))),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
