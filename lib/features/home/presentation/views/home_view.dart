import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/core/constants/string_manager.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/features/home/presentation/widgets/button_home_widget.dart';
import 'package:fs_bank/features/home/presentation/widgets/custom_drawer_widget.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/app/depndency_injection.dart';
import '../widgets/account_section_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        iconTheme: IconThemeData(color: ColorManager.white),
        title: Text(AppStrings().home,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold, color: ColorManager.white)),
      ),
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
                        AppStrings().welcome,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: ColorManager.secondary),
                      ),
                      SizedBox(width: AppSizeW.s4),
                      Text(
                        "${instance<AppPreferences>().getUserInfo()?.username}",
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
                    const AccountSectionWidget(),
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
                          // showMyBottomSheet(
                          //     context, const TransferMyAccountsView());
                        },
                        child: ButtonHomeWidget(
                            color: ColorManager.secondary,
                            image: ImageAssets.transaction,
                            title: "Transfer"),
                      ),
                    ),
                    SizedBox(height: AppSizeH.s24),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
