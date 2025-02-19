import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fs_bank/core/bases/enums/card_type.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/core/constants/string_manager.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/widgets/bottom_sheet_base_widget.dart';
import 'package:fs_bank/core/widgets/custom_error_widget.dart';
import 'package:fs_bank/core/widgets/generic_drop_down_widget.dart';
import 'package:fs_bank/core/widgets/shimmer_widget.dart';
import 'package:fs_bank/core/widgets/toast_widget.dart';
import 'package:fs_bank/features/accounts/presentation/widgets/drop_down_account_widget.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_card_model/request_card_model.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_inactive_card/request_inactive_card_model.dart';
import 'package:fs_bank/features/cards/domain/models/card_model/card_model.dart';
import 'package:fs_bank/features/cards/domain/models/withdrawel_values_model/with_drawel_values_model.dart';
import 'package:fs_bank/features/cards/presentation/blocs/cards_bloc/cards_bloc.dart';
import 'package:fs_bank/features/cards/presentation/blocs/withdrawal_bloc/withdrawal_bloc.dart';
import 'package:fs_bank/features/splash/presentation/blocs/app_bloc/app_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/app/depndency_injection.dart';
import '../../../../core/cache/app_preferences.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../domain/models/Inputs/request_increase_withdrawal_value/request_increase_withdrawal_value_model.dart';
import '../blocs/request_card_bloc/request_card_bloc.dart';
import '../widgets/base_bottom_sheet_widget.dart';
import '../widgets/card_item_widget.dart';
import '../widgets/card_request_widget.dart';
import '../widgets/edit_withdrawal_widget.dart';
import '../widgets/inactive_card_widget.dart';
import '../widgets/new_card_widget.dart';

class MyCardsView extends StatefulWidget {
  const MyCardsView({super.key});

  @override
  State<MyCardsView> createState() => _MyCardsViewState();
}

class _MyCardsViewState extends State<MyCardsView> {
  PageController controller = PageController();
  late CardsBloc cardsBloc;
  @override
  void initState() {
    cardsBloc = instance<CardsBloc>()
      ..add(const CardsEvent.getMyCards())
      ..add(const CardsEvent.getWithDrawalValues());
    super.initState();
  }

  @override
  void dispose() {
    cardsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings().myCards),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: AppSizeH.s16),
            BlocBuilder(
              bloc: cardsBloc,
              builder: (context, CardsState state) {
                if (state.hasError) {
                  return CustomErrorWidget(
                    message: state.errorMessage,
                    onPressed: () {
                      cardsBloc.add(const CardsEvent.getMyCards());
                    },
                  );
                }
                if (state.isLoading && state.cards.isEmpty) {
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
                }
                return Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    state.cards.isEmpty
                        ? SizedBox(
                            height: AppSizeH.s200,
                            child: Center(
                              child: Text(
                                AppStrings().dontHaveAnyCards,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          )
                        : Column(
                            children: [
                              SizedBox(
                                  height: AppSizeH.s200,
                                  child: PageView.builder(
                                    controller: controller,
                                    itemCount: state.cards.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: AppSizeW.s16),
                                      child: CardItemWidget(
                                          model: state.cards[index]),
                                    ),
                                  )),
                              SizedBox(height: AppSizeH.s24),
                              SmoothPageIndicator(
                                controller: controller,
                                count: state.cards.length,
                                effect: JumpingDotEffect(
                                    dotHeight: AppSizeW.s8,
                                    dotWidth: AppSizeW.s8,
                                    activeDotColor: ColorManager.primary),
                              ),
                            ],
                          ),
                    state.isLoading ? const LoadingWidget() : const SizedBox(),
                  ],
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
                                          isDismissible: false,
                                          enableDrag: false,
                                          BaseBottomSheetWidget(
                                            title: AppStrings()
                                                .newSupplementaryCard,
                                            child: PopScope(
                                              canPop: false,
                                              child: NewCardWidget(
                                                  cardsBloc: cardsBloc),
                                            ),
                                          ));
                                    },
                                    icon: Icons.add,
                                    // imagePath: IconAssets.add_card_icon,
                                    title: AppStrings().newSupplementaryCard)),
                            SizedBox(width: AppSizeW.s16),
                            Expanded(
                                child: CardRequestWidget(
                                    onTap: () {
                                      if (cardsBloc.state.cards.any(
                                        (element) =>
                                            element.status.toLowerCase() ==
                                            "ready",
                                      )) {
                                        showMyBottomSheet(
                                          context,
                                          isDismissible: false,
                                          enableDrag: false,
                                          BaseBottomSheetWidget(
                                            title: AppStrings().deactivateCard,
                                            child: PopScope(
                                              canPop: false,
                                              child: InActiveCardWidget(
                                                  cardsBloc: cardsBloc),
                                            ),
                                          ),
                                        );
                                      } else {
                                        showToast(
                                            context: context,
                                            message: AppStrings().noCardActive,
                                            color: ColorManager.persimmon);
                                      }
                                    },
                                    icon: Icons.close,
                                    // imagePath: IconAssets.in_active_cards_icon,
                                    title: AppStrings().deactivateCardNewline)),
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
                                      if (cardsBloc.state.cards.any(
                                        (element) =>
                                            element.status.toLowerCase() ==
                                            "ready",
                                      )) {
                                        showMyBottomSheet(
                                          context,
                                          enableDrag: false,
                                          isDismissible: false,
                                          BaseBottomSheetWidget(
                                            title: AppStrings().editCardLimit,
                                            child: PopScope(
                                                canPop: false,
                                                child: EditWithdrawalWidget(
                                                  cardsBloc: cardsBloc,
                                                )),
                                          ),
                                        );
                                      } else {
                                        showToast(
                                            context: context,
                                            message: AppStrings().noCardActive,
                                            color: ColorManager.persimmon);
                                      }
                                    },
                                    icon: Icons.edit,
                                    // imagePath: IconAssets.edit_withdraw_icon,
                                    title: AppStrings().editCardLimitNewline)),
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
