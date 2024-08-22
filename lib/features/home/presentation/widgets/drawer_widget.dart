import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/features/splash/presentation/blocs/app_bloc/app_bloc.dart';
import 'package:fs_bank/features/transfer/presentation/views/transfer_my_accounts_view.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/bottom_sheet_base_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      bloc: context.read<AppBloc>(),
      listener: (context, AppState state) {
        state.mapOrNull(
          auth: (value) {
            context.goNamed(RoutesPaths.loginRoute);
          },
        );
      },
      builder: (context, state) => Padding(
        padding: EdgeInsetsDirectional.only(
            start: AppSizeW.s16, top: AppSizeH.s48, bottom: AppSizeH.s34),
        child: Drawer(
            backgroundColor: ColorManager.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizeR.s8)),
            child: Column(
              children: [
                Expanded(
                  child: ListView(children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: AppSizeW.s24, end: AppSizeW.s17),
                      child: SizedBox(
                        child: Row(
                          children: [
                            Container(
                              height: AppSizeW.s72,
                              width: AppSizeW.s72,
                              decoration: BoxDecoration(
                                  color: ColorManager.fillQuarternary,
                                  borderRadius:
                                      BorderRadius.circular(AppSizeR.s8)),
                              child: Icon(
                                Icons.person,
                                size: AppSizeSp.s50,
                                color: ColorManager.cornflowerBlue,
                              ),
                            ),
                            SizedBox(width: AppSizeW.s16),
                            Expanded(
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    context.read<AppBloc>().user?.name ??
                                        "Unknown",
                                    softWrap: true,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: AppSizeH.s4),
                                  Text(
                                    context.read<AppBloc>().user?.phoneNumber ??
                                        "Unknown",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: AppSizeSp.s12),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: AppSizeH.s32),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: AppSizeW.s30, end: AppSizeW.s17),
                      child: Column(
                        children: [
                          DrawerItemWidget(
                              onTap: () {
                                Navigator.of(context).pop();
                                context.goNamed(RoutesNames.accountsRoute);
                              },
                              iconPath: IconAssets.account_icon,
                              title: "Accounts"),
                          SizedBox(height: AppSizeH.s16),
                          DrawerItemWidget(
                              onTap: () {
                                Navigator.of(context).pop();
                                context.goNamed(RoutesNames.myCardsRoute);
                              },
                              iconPath: IconAssets.cards_icon,
                              title: "My Cards"),
                          SizedBox(height: AppSizeH.s16),
                          DrawerItemWidget(
                              onTap: () {
                                Navigator.of(context).pop();
                                context.goNamed(RoutesNames.transferRoute);
                                // showMyBottomSheet(
                                //     context, const TransferMyAccountsView());
                              },
                              iconPath: IconAssets.cards_icon,
                              title: "Transfer accounts"),
                        ],
                      ),
                    )
                  ]),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: AppSizeW.s30, end: AppSizeW.s17),
                  child: BlocBuilder(
                    bloc: context.read<AppBloc>(),
                    builder: (context, AppState state) {
                      return state.maybeMap(
                        loading: (value) {
                          return const LinearProgressIndicator();
                        },
                        orElse: () {
                          return DrawerItemWidget(
                              onTap: () {
                                context
                                    .read<AppBloc>()
                                    .add(const AppEvent.logout());
                              },
                              iconPath: IconAssets.logout_icon,
                              title: "Logout");
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: AppSizeH.s40)
              ],
            )),
      ),
    );
  }
}

class DrawerItemWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final void Function()? onTap;

  const DrawerItemWidget({
    super.key,
    required this.iconPath,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(
            iconPath,
            width: AppSizeW.s20,
          ),
          SizedBox(width: AppSizeW.s16),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          )
        ],
      ),
    );
  }
}
