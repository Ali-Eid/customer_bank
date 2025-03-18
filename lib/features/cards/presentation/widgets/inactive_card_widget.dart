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
import '../../domain/models/Inputs/request_inactive_card/request_inactive_card_model.dart';
import '../blocs/cards_bloc/cards_bloc.dart';
import '../blocs/request_card_bloc/request_card_bloc.dart';

class InActiveCardWidget extends StatefulWidget {
  final CardsBloc cardsBloc;
  const InActiveCardWidget({
    super.key,
    required this.cardsBloc,
  });

  @override
  State<InActiveCardWidget> createState() => _InActiveCardWidgetState();
}

class _InActiveCardWidgetState extends State<InActiveCardWidget> {
  final reasonController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late RequestCardBloc requestCardBloc;
  int? cardId;
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
                return BlocBuilder(
                  bloc: widget.cardsBloc,
                  builder: (context, CardsState state) {
                    return GenericDropdownField(
                      items: widget.cardsBloc.state.cards
                          .where(
                            (element) =>
                                element.status.toLowerCase() == "ready",
                          )
                          .toList(),
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
                );
              },
            ),
            SizedBox(height: AppSizeH.s16),
            TextFormField(
              controller: reasonController,
              style: Theme.of(context).textTheme.headlineLarge,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return AppStrings().pleaseSelectReason;
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(hintText: AppStrings().selectReason),
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
                                    RequestCardEvent.inActiveCard(
                                        request: RequestInactiveCardModel(
                                            cardId: cardId ?? 0,
                                            message: reasonController.text)));
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
