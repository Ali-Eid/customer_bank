import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/core/widgets/custom_error_widget.dart';
import 'package:fs_bank/core/widgets/shimmer_widget.dart';
import 'package:fs_bank/features/cards/domain/models/card_model/card_model.dart';
import 'package:fs_bank/features/cards/presentation/blocs/cards_bloc/cards_bloc.dart';
import 'package:fs_bank/features/home/presentation/widgets/drawer_widget.dart';

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
    context.read<CardsBloc>().add(const CardsEvent.getMyCards());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: AppSizeH.s16),
          SizedBox(
            height: AppSizeH.s220,
            child: BlocBuilder(
              bloc: context.read<CardsBloc>(),
              builder: (context, CardsState state) {
                return state.map(
                  loading: (value) {
                    return ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: EdgeInsetsDirectional.only(
                                end: index == 4 ? 0 : AppSizeW.s8),
                            child: ShimmerWidget(
                              child: Container(
                                height: AppSizeH.s220,
                                width: AppSizeW.s170,
                                decoration: BoxDecoration(
                                  color: ColorManager.white,
                                  borderRadius:
                                      BorderRadius.circular(AppSizeR.s8),
                                ),
                              ),
                            ));
                      },
                    );
                  },
                  loaded: (value) {
                    return ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                      scrollDirection: Axis.horizontal,
                      itemCount: context.read<CardsBloc>().cards.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsetsDirectional.only(
                              end: index == 4 ? 0 : AppSizeW.s8),
                          child: CardItemHomeWidget(
                              model: context.read<CardsBloc>().cards[index]),
                        );
                      },
                    );
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
          ),
          SizedBox(height: AppSizeH.s24),
          // InkWell(
          //   onTap: () {
          //     showMyBottomSheet(context, const TransferMyAccountsView());
          //   },
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       Container(
          //         height: AppSizeW.s40,
          //         width: AppSizeW.s40,
          //         padding: EdgeInsets.all(AppSizeW.s10),
          //         decoration: BoxDecoration(
          //             color: ColorManager.primary,
          //             borderRadius: BorderRadius.circular(AppSizeR.s8)),
          //         child: Icon(
          //           Icons.arrow_upward_rounded,
          //           color: ColorManager.white,
          //         ),
          //       ),
          //       SizedBox(height: AppSizeH.s16),
          //       Text(
          //         "Transfer",
          //         style: Theme.of(context)
          //             .textTheme
          //             .titleSmall!
          //             .copyWith(fontWeight: FontWeight.bold),
          //       )
          //     ],
          //   ),
          // )
        ],
      )),
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
