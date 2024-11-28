import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/core/widgets/custom_error_widget.dart';
import 'package:fs_bank/core/widgets/shimmer_widget.dart';
import 'package:fs_bank/features/accounts/presentation/blocs/my_accounts_bloc/my_accounts_bloc.dart';
import 'package:fs_bank/features/accounts/presentation/widgets/account_home_widget.dart';
import 'package:fs_bank/features/cards/domain/models/card_model/card_model.dart';
import 'package:fs_bank/features/cards/presentation/blocs/cards_bloc/cards_bloc.dart';
import 'package:fs_bank/features/cards/presentation/views/mycards_view.dart';
import 'package:fs_bank/features/home/presentation/widgets/button_home_widget.dart';
import 'package:fs_bank/features/home/presentation/widgets/drawer_widget.dart';
import 'package:fs_bank/features/splash/presentation/blocs/app_bloc/app_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/app/depndency_injection.dart';
import '../../../../core/bases/enums/card_type.dart';
import '../../../../core/widgets/bottom_sheet_base_widget.dart';
import '../../../transfer/presentation/views/transfer_my_accounts_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    context.read<MyAccountsBloc>().add(MyAccountsEvent.getMyAccounts(
        customerId: instance<AppPreferences>().getUserInfo()?.customerId ?? 0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const DrawerWidget(),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(AppSizeW.s16),
              decoration: BoxDecoration(
                color: ColorManager.primary,
                borderRadius: BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(AppSizeR.s16),
                  bottomStart: Radius.circular(AppSizeR.s16),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Welcome",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: ColorManager.secondary),
                      ),
                      SizedBox(width: AppSizeW.s4),
                      Text(
                        "${instance<AppPreferences>().getUserInfo()?.name}",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(color: ColorManager.white),
                      )
                    ],
                  ),
                  SvgPicture.asset(
                    ImageAssets.logoMadfoxWhite,
                    height: AppSizeH.s50,
                    colorFilter: ColorFilter.mode(
                        ColorManager.secondary, BlendMode.srcIn),
                  )
                ],
              )),
          SizedBox(height: AppSizeH.s4),
          Expanded(
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: AppSizeW.s16),
                      margin: EdgeInsets.all(AppSizeW.s4),
                      decoration: BoxDecoration(
                        color: ColorManager.white,
                        boxShadow: [
                          BoxShadow(
                            color: ColorManager.grey5,
                            blurRadius: 5,
                            spreadRadius: 0,
                            offset: const Offset(0, 0.05),
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppSizeR.s15),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "My Accounts",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: ColorManager.secondary),
                                    ),
                                  ],
                                ),
                                SizedBox(height: AppSizeH.s4),
                                Container(
                                  height: AppSizeH.s10,
                                  width: AppSizeW.s112,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(AppSizeR.s4),
                                    color: ColorManager.primary,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: AppSizeH.s8),
                          SizedBox(
                            height: AppSizeH.s220,
                            child: BlocBuilder(
                              bloc: context.read<MyAccountsBloc>(),
                              builder: (context, MyAccountsState state) {
                                return state.map(
                                  loading: (value) {
                                    return ListView.builder(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: AppSizeW.s16),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                end: index == 4
                                                    ? 0
                                                    : AppSizeW.s8),
                                            child: ShimmerWidget(
                                              child: Container(
                                                height: AppSizeH.s220,
                                                width: AppSizeW.s170,
                                                decoration: BoxDecoration(
                                                  color: ColorManager.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          AppSizeR.s8),
                                                ),
                                              ),
                                            ));
                                      },
                                    );
                                  },
                                  loaded: (value) {
                                    return value.accounts.data.isEmpty
                                        ? Center(
                                            child: Text(
                                              "No account",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge,
                                            ),
                                          )
                                        : ListView.builder(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: AppSizeW.s16),
                                            scrollDirection: Axis.horizontal,
                                            itemCount: context
                                                .read<MyAccountsBloc>()
                                                .accounts
                                                .length,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: index == 0
                                                            ? 0
                                                            : AppSizeW.s8),
                                                child: AccountHomeWidget(
                                                    model: context
                                                        .read<MyAccountsBloc>()
                                                        .accounts[index]),
                                              );
                                            },
                                          );
                                  },
                                  error: (value) {
                                    return CustomErrorWidget(
                                      message: value.message,
                                      onPressed: () {
                                        context.read<MyAccountsBloc>().add(
                                            MyAccountsEvent.getMyAccounts(
                                                customerId:
                                                    instance<AppPreferences>()
                                                            .getUserInfo()
                                                            ?.customerId ??
                                                        0));
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizeH.s16),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s4),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(AppSizeR.s15),
                        onTap: () {
                          context.goNamed(RoutesNames.myCardsRoute);
                          // showMyBottomSheet(context, const MyCardsView());
                        },
                        child: ButtonHomeWidget(
                            color: ColorManager.primary,
                            image: ImageAssets.cards,
                            title: "My Cards"),
                      ),
                    ),
                    SizedBox(height: AppSizeH.s16),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s4),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(AppSizeR.s15),
                        onTap: () {
                          context.goNamed(RoutesNames.transferRoute);
                        },
                        child: ButtonHomeWidget(
                            color: ColorManager.secondary,
                            image: ImageAssets.transaction,
                            title: "Transfer"),
                      ),
                    ),
                    // SizedBox(
                    //   height: AppSizeH.s220,
                    //   child: BlocBuilder(
                    //     bloc: context.read<CardsBloc>(),
                    //     builder: (context, CardsState state) {
                    //       return state.map(
                    //         loading: (value) {
                    //           return ListView.builder(
                    //             padding:
                    //                 EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                    //             scrollDirection: Axis.horizontal,
                    //             itemCount: 2,
                    //             itemBuilder: (context, index) {
                    //               return Padding(
                    //                   padding: EdgeInsetsDirectional.only(
                    //                       end: index == 4 ? 0 : AppSizeW.s8),
                    //                   child: ShimmerWidget(
                    //                     child: Container(
                    //                       height: AppSizeH.s220,
                    //                       width: AppSizeW.s170,
                    //                       decoration: BoxDecoration(
                    //                         color: ColorManager.white,
                    //                         borderRadius:
                    //                             BorderRadius.circular(AppSizeR.s8),
                    //                       ),
                    //                     ),
                    //                   ));
                    //             },
                    //           );
                    //         },
                    //         loaded: (value) {
                    //           return ListView.builder(
                    //             padding:
                    //                 EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                    //             scrollDirection: Axis.horizontal,
                    //             itemCount: context.read<CardsBloc>().cards.length,
                    //             itemBuilder: (context, index) {
                    //               return Padding(
                    //                 padding: EdgeInsetsDirectional.only(
                    //                     end: index == 4 ? 0 : AppSizeW.s8),
                    //                 child: CardItemHomeWidget(
                    //                     model:
                    //                         context.read<CardsBloc>().cards[index]),
                    //               );
                    //             },
                    //           );
                    //         },
                    //         error: (value) {
                    //           return CustomErrorWidget(
                    //             message: value.message,
                    //             onPressed: () {
                    //               context
                    //                   .read<CardsBloc>()
                    //                   .add(const CardsEvent.getMyCards());
                    //             },
                    //           );
                    //         },
                    //       );
                    //     },
                    //   ),
                    // ),
                    SizedBox(height: AppSizeH.s24),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class CardItemHomeWidget extends StatelessWidget {
  final CardModel model;
  const CardItemHomeWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizeW.s16),
      height: AppSizeH.s220,
      width: AppSizeW.s170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizeR.s8),
        image: DecorationImage(
          image: AssetImage(model.type == CardType.credit.name
              ? ImageAssets.cardCredit
              : ImageAssets.cardDebate),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.type,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.bold, color: ColorManager.white),
          ),
          SizedBox(height: AppSizeH.s17),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Your Balance",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.bold, color: ColorManager.white),
              ),
              Text(
                model.amount.toString(),
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: AppSizeSp.s22,
                    ),
              ),
            ],
          ),
          SizedBox(height: AppSizeH.s24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                model.beneficiaryName,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold, color: ColorManager.white),
              ),
              Text(
                model.cardNumber,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.bold, color: ColorManager.white),
              ),
            ],
          ),
          SizedBox(height: AppSizeH.s16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Expired Date",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold, color: ColorManager.white),
              ),
              Text(
                model.expiry_At,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.bold, color: ColorManager.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
