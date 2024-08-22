import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/features/on_boarding/domain/models/on_boarding_model/on_boarding_model.dart';
import 'package:fs_bank/features/on_boarding/presentation/blocs/on_boarding_bloc/on_boarding_bloc.dart';
import 'package:go_router/go_router.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late OnBoardingBloc onBoardingBloc;
  final controller = PageController();

  @override
  void initState() {
    onBoardingBloc = OnBoardingBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: BlocBuilder(
        bloc: onBoardingBloc,
        builder: (context, OnBoardingState state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: controller,
                  itemCount: onBoardingBloc.onBoarding.length,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value) {
                    onBoardingBloc
                        .add(OnBoardingEvent.changeIndex(index: value));
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                      child: OnBoardingWidget(
                          model: onBoardingBloc.onBoarding[index]),
                    );
                  },
                ),
              ),
              SizedBox(height: AppSizeH.s40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: onBoardingBloc.selectIndex >= 2
                              ? () {
                                  onBoardingBloc.add(const OnBoardingEvent
                                      .setShowOnBoarding());
                                  context.goNamed(RoutesNames.loginRoute);
                                }
                              : () {
                                  controller.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.linearToEaseOut);
                                },
                          child: Text(onBoardingBloc.selectIndex >= 2
                              ? "Get Started"
                              : "Next")),
                    )
                  ],
                ),
              ),
              SizedBox(height: AppSizeH.s24),
            ],
          );
        },
      ),
    );
  }
}

class OnBoardingWidget extends StatelessWidget {
  final OnBoardingModel model;
  const OnBoardingWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.title,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        SizedBox(height: AppSizeH.s16),
        Text(
          model.subTitle,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(height: AppSizeH.s24),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: ColorManager.fillQuarternary,
                borderRadius: BorderRadius.circular(AppSizeR.s10),
                image: DecorationImage(
                    image: AssetImage(model.image), fit: BoxFit.contain)),
          ),
        )
      ],
    );
  }
}
