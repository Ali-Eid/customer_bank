import 'dart:async';

import 'package:animate_do/animate_do.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/features/splash/presentation/blocs/app_bloc/app_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // AssetsAudioPlayer.newPlayer().open(
    //   Audio(SongAssets.song_splash),
    //   autoStart: true,
    // );
    Timer(
      const Duration(seconds: 7),
      () {
        context.read<AppBloc>().add(const AppEvent.checkApp());
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener(
        bloc: context.read<AppBloc>(),
        listener: (context, AppState state) {
          state.mapOrNull(
            auth: (value) {
              context.goNamed(RoutesNames.loginRoute);
            },
            home: (value) {
              context.goNamed(RoutesNames.homeRoute);
            },
          );
        },
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: ColorManager.white),
            ),
            Center(
              child: FadeInDown(
                duration: const Duration(milliseconds: 3000),
                //  child:Text('Agent')
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageAssets.logo,
                      width: ScreenUtil.defaultSize.width * 0.6,
                      // color: ColorManager.black,
                    ),
                    SizedBox(
                      height: AppSizeH.s10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(AppSizeW.s8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Welcome',
                              style: Theme.of(context).textTheme.labelMedium),
                          SizedBox(
                            width: AppSizeH.s4,
                          ),
                          Text('Customer app',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      color: ColorManager.primary,
                                      fontSize: AppSizeSp.s16))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
