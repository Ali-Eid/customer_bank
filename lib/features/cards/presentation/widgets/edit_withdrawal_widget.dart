import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/generic_drop_down_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/toast_widget.dart';
import '../../domain/models/Inputs/request_increase_withdrawal_value/request_increase_withdrawal_value_model.dart';
import '../blocs/cards_bloc/cards_bloc.dart';
import '../blocs/request_card_bloc/request_card_bloc.dart';

class EditWithdrawalWidget extends StatefulWidget {
  final CardsBloc cardsBloc;
  const EditWithdrawalWidget({
    super.key,
    required this.cardsBloc,
  });

  @override
  State<EditWithdrawalWidget> createState() => _EditWithdrawalWidgetState();
}

class _EditWithdrawalWidgetState extends State<EditWithdrawalWidget> {
  final _formKey = GlobalKey<FormState>();
  late RequestCardBloc requestCardBloc;
  int? cardId;
  int? withdrawalId;
  @override
  void initState() {
    requestCardBloc = instance<RequestCardBloc>();
    super.initState();
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
            BlocBuilder(
              bloc: widget.cardsBloc,
              builder: (context, CardsState state) {
                return GenericDropdownField(
                  items: widget.cardsBloc.state.cards
                    ..where(
                      (element) => element.status.toLowerCase() == "ready",
                    ).toList(),
                  itemToString: (value) => value.cardNumber,
                  onChanged: (value) {
                    cardId = value?.id;
                  },
                  hintText: AppStrings().card,
                  validator: (value) {
                    if (value == null) {
                      return AppStrings().pleaseSelectCard;
                    }
                    return null;
                  },
                );
              },
            ),
            SizedBox(height: AppSizeH.s16),
            BlocBuilder(
              bloc: widget.cardsBloc,
              builder: (context, CardsState state) {
                return GenericDropdownField(
                  items: widget.cardsBloc.state.withDrawelValues,
                  itemToString: (value) => value.value.toString(),
                  onChanged: (value) {},
                  hintText: AppStrings().withdrawal,
                  validator: (value) {
                    if (value == null) {
                      return AppStrings().pleaseSelectWithdrawal;
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
                                requestCardBloc.add(
                                    RequestCardEvent.editWithdrawalCard(
                                        request:
                                            RequestIncreaseWithdrawalValueModel(
                                                cardId: cardId ?? 0,
                                                withdrawalValueId:
                                                    withdrawalId ?? 0)));
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
