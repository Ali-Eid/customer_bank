import 'package:flutter/material.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/themes/color_manager.dart';

class MainView extends StatefulWidget {
  final Widget child;

  const MainView({super.key, required this.child});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        iconTheme: IconThemeData(color: ColorManager.white),
        title: TextButton(
            onPressed: () {
              context.goNamed(RoutesNames.homeRoute);
            },
            child: Text("Home",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold, color: ColorManager.white))),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizeW.s24),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {
                      context.goNamed(RoutesNames.myCardsRoute);
                    },
                    child: Text("My Cards",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: ColorManager.white))),
                TextButton(
                    onPressed: () {
                      context.goNamed(RoutesNames.transferRoute);
                    },
                    child: Text("Transfer",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: ColorManager.white)))
              ],
            ),
          ),
        ],
      ),
      body: widget.child,
    );
  }
}
