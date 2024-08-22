import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:fs_bank/features/splash/presentation/blocs/app_bloc/app_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app/depndency_injection.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late AuthBloc authBloc;
  @override
  void initState() {
    authBloc = instance<AuthBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Login", style: Theme.of(context).textTheme.labelMedium),
        centerTitle: true,
      ),
      body: BlocListener(
        bloc: authBloc,
        listener: (context, AuthState state) {
          state.mapOrNull(
            success: (value) {
              context.read<AppBloc>().user = value.success.data.user;
              context.goNamed(RoutesNames.homeRoute);
            },
            successSendOtp: (value) {
              context.goNamed(RoutesNames.otpVerficationRoute,
                  pathParameters: {"phone": phoneController.text},
                  extra: authBloc);
            },
          );
        },
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    child: Column(
                      children: [
                        Container(
                          height: AppSizeH.s384,
                          decoration: BoxDecoration(
                            color: ColorManager.fillQuarternary,
                            borderRadius: BorderRadius.circular(AppSizeR.s10),
                            image: DecorationImage(
                                image: AssetImage(ImageAssets.bankLogo),
                                fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(height: AppSizeH.s24),
                        Column(
                          children: [
                            Text(
                              "Fast money transfer and guaranteed safe transactions with others",
                              style: Theme.of(context).textTheme.titleSmall,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: AppSizeH.s12),
                            TextFormField(
                              controller: phoneController,
                              keyboardType: TextInputType.number,
                              style: Theme.of(context).textTheme.headlineLarge,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your phone number';
                                }
                                return null;
                              },
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: const InputDecoration(
                                  hintText: "phone number"),
                            )
                          ],
                        ),
                        SizedBox(height: AppSizeH.s24),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: BlocBuilder(
                      bloc: authBloc,
                      builder: (context, AuthState state) {
                        return state.maybeMap(
                          loading: (value) {
                            return const LinearProgressIndicator();
                          },
                          orElse: () {
                            return ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    authBloc.add(AuthEvent.sendOtp(
                                        phoneNumber: phoneController.text));
                                  }
                                },
                                child: const Text("Login"));
                          },
                        );
                      },
                    ))
                  ],
                ),
                SizedBox(height: AppSizeH.s24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
