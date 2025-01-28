import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:go_router/go_router.dart';

class TransferView extends StatefulWidget {
  const TransferView({super.key});

  @override
  State<TransferView> createState() => _TransferViewState();
}

class _TransferViewState extends State<TransferView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Transfer",
        ),
      ),
      body: Column(
        spacing: AppSizeH.s10,
        children: [
          TransfereItemWidget(
            title: "My Transfers",
            subTitle: "Transfer Money Between My Accounts",
            image: ImageAssets.transaction,
            onTap: () {
              context.goNamed(RoutesNames.transferMyAccountsRoute);
            },
          ),
          TransfereItemWidget(
            title: "Bank Transfers",
            subTitle: "Transfer Money Within Bank Accounts",
            image: ImageAssets.logoMadfoxWhite,
            onTap: () {
              context.goNamed(RoutesNames.transferInternalRoute);
            },
          ),
          TransfereItemWidget(
            title: "Transfer to Another Bank (SYGS )",
            subTitle: "Transfer Money to an Account in Another Bank",
            image: ImageAssets.bank,
            onTap: () {
              context.goNamed(RoutesNames.transferSygsRoute);
            },
          ),
        ],
      ),
    );
  }
}

class TransfereItemWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final Function()? onTap;
  const TransfereItemWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        height: AppSizeH.s45,
        width: AppSizeH.s45,
        padding: EdgeInsets.all(AppSizeW.s8),
        decoration: BoxDecoration(
            color: ColorManager.secondary, shape: BoxShape.circle),
        child: image.toLowerCase().endsWith('.svg')
            ? SvgPicture.asset(
                image,
                colorFilter:
                    ColorFilter.mode(ColorManager.white, BlendMode.srcIn),
              )
            : Image(
                image: AssetImage(image),
                color: ColorManager.white,
              ),
      ),
      title: Text(title, style: Theme.of(context).textTheme.headlineMedium),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.titleSmall),
      trailing: Icon(
        Icons.keyboard_arrow_right_rounded,
        color: ColorManager.primary,
      ),
    );
  }
}
