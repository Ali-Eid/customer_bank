import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fs_bank/core/bases/enums/card_type.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/widgets/bottom_sheet_base_widget.dart';
import 'package:fs_bank/core/widgets/custom_error_widget.dart';
import 'package:fs_bank/core/widgets/shimmer_widget.dart';
import 'package:fs_bank/core/widgets/toast_widget.dart';
import 'package:fs_bank/features/accounts/presentation/blocs/my_accounts_bloc/my_accounts_bloc.dart';
import 'package:fs_bank/features/accounts/presentation/widgets/drop_down_account_widget.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_card_model/request_card_model.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_inactive_card/request_inactive_card_model.dart';
import 'package:fs_bank/features/cards/domain/models/card_model/card_model.dart';
import 'package:fs_bank/features/cards/domain/models/withdrawel_values_model/with_drawel_values_model.dart';
import 'package:fs_bank/features/cards/presentation/blocs/cards_bloc/cards_bloc.dart';
import 'package:fs_bank/features/cards/presentation/blocs/withdrawal_bloc/withdrawal_bloc.dart';
import 'package:fs_bank/features/cards/presentation/widgets/drop_down_withdrawal_value_widget.dart';
import 'package:fs_bank/features/splash/presentation/blocs/app_bloc/app_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/app/depndency_injection.dart';
import '../../../../core/themes/color_manager.dart';
import '../../domain/models/Inputs/request_increase_withdrawal_value/request_increase_withdrawal_value_model.dart';
import '../blocs/request_card_bloc/request_card_bloc.dart';
import '../widgets/drop_down_card_widget.dart';

class MyCardsView extends StatefulWidget {
  const MyCardsView({super.key});

  @override
  State<MyCardsView> createState() => _MyCardsViewState();
}

class _MyCardsViewState extends State<MyCardsView> {
  PageController controller = PageController();
  late RequestCardBloc requestCardBloc;

  @override
  void initState() {
    if (context.read<MyAccountsBloc>().accounts.isEmpty) {
      context.read<MyAccountsBloc>().add(MyAccountsEvent.getMyAccounts(
          customerId: context.read<AppBloc>().user?.customerId ?? 0,
          isLoading: false));
    }
    context
        .read<WithdrawalBloc>()
        .add(const WithdrawalEvent.getWithDrawalValues());

    context.read<CardsBloc>().add(const CardsEvent.getMyCards());
    requestCardBloc = instance<RequestCardBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My cards",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: AppSizeH.s16),
            BlocBuilder(
              bloc: context.read<CardsBloc>(),
              builder: (context, CardsState state) {
                return state.map(
                  loading: (value) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                      child: ShimmerWidget(
                          child: Container(
                        height: AppSizeH.s200,
                        padding: EdgeInsets.all(AppSizeW.s16),
                        decoration: BoxDecoration(
                          color: ColorManager.white,
                          borderRadius: BorderRadius.circular(AppSizeR.s8),
                        ),
                      )),
                    );
                  },
                  loaded: (value) {
                    return Column(
                      children: [
                        SizedBox(
                          height: AppSizeH.s200,
                          child: PageView.builder(
                            controller: controller,
                            itemCount: context.read<CardsBloc>().cards.length,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppSizeW.s16),
                                child: CardItemWidget(
                                    model:
                                        context.read<CardsBloc>().cards[index]),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: AppSizeH.s24),
                        SmoothPageIndicator(
                          controller: controller,
                          count: context.read<CardsBloc>().cards.length,
                          effect: JumpingDotEffect(
                            dotHeight: AppSizeW.s8,
                            dotWidth: AppSizeW.s8,
                          ),
                        ),
                      ],
                    );
                    // const CardItemWidget();
                  },
                  error: (value) {
                    return CustomErrorWidget(
                      message: value.message,
                      onPressed: () {
                        context
                            .read<CardsBloc>()
                            .add(const CardsEvent.getMyCards());
                      },
                    );
                  },
                );
              },
            ),
            SizedBox(height: AppSizeH.s16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
              child: SizedBox(
                height: ScreenUtil.defaultSize.height * 0.5,
                child: Container(
                  padding: EdgeInsets.all(AppSizeW.s16),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: AppSizeW.s1, color: ColorManager.nonOpaque),
                    borderRadius: BorderRadius.circular(AppSizeR.s8),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: CardRequestWidget(
                                    onTap: () {
                                      showMyBottomSheet(
                                        context,
                                        const BaseBottomSheetWidget(
                                          title: "New supplementary card",
                                          child: NewCardWidget(),
                                        ),
                                      );
                                    },
                                    imagePath: IconAssets.add_card_icon,
                                    title: "New supplementary card")),
                            SizedBox(width: AppSizeW.s16),
                            Expanded(
                                child: CardRequestWidget(
                                    onTap: () {
                                      if (context.read<CardsBloc>().cards.any(
                                            (element) =>
                                                element.status.toLowerCase() ==
                                                "active",
                                          )) {
                                        showMyBottomSheet(
                                          context,
                                          const BaseBottomSheetWidget(
                                            title: "Deactivate card",
                                            child: InActiveCardWidget(),
                                          ),
                                        );
                                      } else {
                                        showToast(
                                            context: context,
                                            message: "No card active",
                                            color: ColorManager.persimmon);
                                      }
                                    },
                                    imagePath: IconAssets.in_active_cards_icon,
                                    title: "Deactivate\ncard")),
                          ],
                        ),
                      ),
                      SizedBox(height: AppSizeH.s16),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: CardRequestWidget(
                                    moreSpacing: true,
                                    onTap: () {
                                      if (context.read<CardsBloc>().cards.any(
                                            (element) =>
                                                element.status.toLowerCase() ==
                                                "active",
                                          )) {
                                        showMyBottomSheet(
                                          context,
                                          const BaseBottomSheetWidget(
                                            title: "Edit card limit",
                                            child: EditWithdrawalWidget(),
                                          ),
                                        );
                                      } else {
                                        showToast(
                                            context: context,
                                            message: "No card active",
                                            color: ColorManager.persimmon);
                                      }
                                    },
                                    imagePath: IconAssets.edit_withdraw_icon,
                                    title: "Edit\ncard limit")),
                            const Expanded(child: SizedBox())
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: AppSizeH.s24),
          ],
        ),
      ),
    );
  }
}

class EditWithdrawalWidget extends StatefulWidget {
  const EditWithdrawalWidget({
    super.key,
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
    context
        .read<CardsBloc>()
        .add(const CardsEvent.getMyCards(isLoading: false));
    context
        .read<WithdrawalBloc>()
        .add(const WithdrawalEvent.getWithDrawalValues(isLoading: false));

    super.initState();
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
              bloc: context.read<CardsBloc>(),
              builder: (context, CardsState state) {
                return DropDownCardWidget(
                  items: context.read<CardsBloc>().cards,
                  label: "Card",
                  onChanged: (card) {
                    cardId = card?.id;
                  },
                  validator: (value) {
                    if (value == null) {
                      return "please select a card";
                    }
                    return null;
                  },
                );
              },
            ),
            SizedBox(height: AppSizeH.s16),
            BlocBuilder(
              bloc: context.read<WithdrawalBloc>(),
              builder: (context, WithdrawalState state) {
                return DropDownWithDrawalWidget(
                  items: context.read<WithdrawalBloc>().valuesWithDrawal,
                  label: "Withdrawal",
                  onChanged: (withdrawal) {
                    withdrawalId = withdrawal?.id;
                  },
                  validator: (value) {
                    if (value == null) {
                      return "please select a withdrawal";
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
                                requestCardBloc.add(
                                    RequestCardEvent.editWithdrawalCard(
                                        request:
                                            RequestIncreaseWithdrawalValueModel(
                                                cardId: cardId ?? 0,
                                                withdrawalValueId:
                                                    withdrawalId ?? 0)));
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

class InActiveCardWidget extends StatefulWidget {
  const InActiveCardWidget({
    super.key,
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
    context
        .read<CardsBloc>()
        .add(const CardsEvent.getMyCards(isLoading: false));
    super.initState();
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
              bloc: context.read<CardsBloc>(),
              builder: (context, CardsState state) {
                return DropDownCardWidget(
                  items: context
                      .read<CardsBloc>()
                      .cards
                      .where(
                        (element) => element.status.toLowerCase() == "active",
                      )
                      .toList(),
                  label: "Card",
                  onChanged: (card) {
                    cardId = card?.id;
                  },
                  validator: (value) {
                    if (value == null) {
                      return "please select a card";
                    }
                    return null;
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
                  return 'Please enter a reason ';
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(hintText: "Reason"),
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
                                requestCardBloc.add(
                                    RequestCardEvent.inActiveCard(
                                        request: RequestInactiveCardModel(
                                            cardId: cardId ?? 0,
                                            message: reasonController.text)));
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
  int? accountId;
  @override
  void initState() {
    requestCardBloc = instance<RequestCardBloc>();
    context.read<MyAccountsBloc>().add(MyAccountsEvent.getMyAccounts(
        customerId: context.read<AppBloc>().user?.customerId ?? 0,
        isLoading: false));
    context
        .read<WithdrawalBloc>()
        .add(const WithdrawalEvent.getWithDrawalValues(isLoading: false));

    super.initState();
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
                                        type: CardType.debit.name,
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

class BaseBottomSheetWidget extends StatelessWidget {
  final String title;
  final Widget child;
  const BaseBottomSheetWidget({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizeW.s16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: AppSizeH.s16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: AppSizeH.s24),
          child
        ],
      ),
    );
  }
}

class CardRequestWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool? moreSpacing;
  final void Function()? onTap;
  const CardRequestWidget({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
    this.moreSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(
              vertical: AppSizeW.s6, horizontal: AppSizeW.s16),
          decoration: BoxDecoration(
              color: ColorManager.grey5,
              borderRadius: BorderRadius.circular(AppSizeR.s8)),
          child: Column(
            children: [
              moreSpacing ?? false
                  ? SizedBox(height: AppSizeH.s10)
                  : const SizedBox(),
              Expanded(
                child: Image(
                  image: AssetImage(imagePath),
                ),
              ),
              SizedBox(height: AppSizeH.s6),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )),
    );
  }
}

class CardItemWidget extends StatelessWidget {
  final CardModel model;
  const CardItemWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizeH.s200,
      padding: EdgeInsets.all(AppSizeW.s16),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(model.type == CardType.credit.name
              ? ImageAssets.cardFullCredit
              : ImageAssets.cardFullDebate),
        ),
        borderRadius: BorderRadius.circular(AppSizeR.s8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Your Balance",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorManager.white),
                      ),
                      Text(
                        model.amount.toString(),
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: AppSizeSp.s22,
                            ),
                      ),
                    ],
                  ),
                  Text(
                    model.type,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold, color: ColorManager.white),
                  ),
                ],
              ),
              SizedBox(height: AppSizeH.s24),
              Text(
                model.cardNumber,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold, color: ColorManager.white),
              ),
            ],
          )),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Card Holder",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: ColorManager.white),
                    ),
                    Text(
                      model.beneficiaryName,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              fontWeight: FontWeight.bold,
                              color: ColorManager.white),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Expired Date",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: ColorManager.white),
                    ),
                    Text(
                      model.expiry_At,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              fontWeight: FontWeight.bold,
                              color: ColorManager.white),
                    ),
                  ],
                ),
              ),
              // const Expanded(child: SizedBox()
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Status",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.bold, color: ColorManager.white),
                  ),
                  Text(
                    model.status,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold, color: ColorManager.white),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
