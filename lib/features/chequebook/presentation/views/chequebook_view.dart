import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/core/constants/string_manager.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/widgets/loading_widget.dart';
import 'package:fs_bank/core/widgets/toast_widget.dart';
import 'package:fs_bank/features/chequebook/presentation/blocs/chequebook_bloc/chequebook_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/app/depndency_injection.dart';
import '../../../../core/cache/app_preferences.dart';
import '../../../../core/cache/keys_preferences.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/bottom_sheet_base_widget.dart';
import '../../../../core/widgets/generic_drop_down_widget.dart';
import '../../../accounts/domain/models/account_model/account_model.dart';
import '../../domain/models/page_chequebook_model/page_chequebook_model.dart';
import '../blocs/input_chequebook_cubit/input_chequebook_cubit.dart';

class ChequebookView extends StatelessWidget {
  const ChequebookView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => instance<ChequebookBloc>()
        ..add(const ChequebookEvent.getPagesChequebook())
        ..add(const ChequebookEvent.getMyChequebook()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Chequebook"),
        ),
        floatingActionButton: BlocBuilder<ChequebookBloc, ChequebookState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () {
                showMyBottomSheet(
                    context,
                    isDismissible: false,
                    enableDrag: false,
                    PopScope(
                      canPop: false,
                      child: CreateChequebookWidget(
                        chequebookBloc: context.read<ChequebookBloc>(),
                      ),
                    ));
              },
              child: const Icon(Icons.add),
            );
          },
        ),
        body: BlocBuilder<ChequebookBloc, ChequebookState>(
          builder: (context, state) {
            if (state.isLoadingMyChequebook) {
              return const Center(child: LoadingWidget());
            }
            if (state.cheques.isEmpty) {
              return const Center(child: Text("No chequebook found"));
            }
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: state.cheques.length,
                    itemBuilder: (context, index) {
                      return Text(state.cheques[index].serialNumber);
                    },
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class CreateChequebookWidget extends StatelessWidget {
  final ChequebookBloc chequebookBloc;
  CreateChequebookWidget({
    super.key,
    required this.chequebookBloc,
  });
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: chequebookBloc,
      listener: (context, ChequebookState state) {
        if (state.hasErrorRequestChequebook) {
          context.pop();
          showToast(
              context: context,
              message: state.errorMessageRequestChequebook,
              color: ColorManager.persimmon);
        }
      },
      child: BlocProvider(
        create: (_) => InputChequebookCubit(0),
        child: BlocBuilder<InputChequebookCubit, int>(
          builder: (context, state) {
            return Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: AppSizeH.s16),
                    Text(
                      "Create Chequebook",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(height: AppSizeH.s24),
                    GenericDropdownField<AccountModel>(
                      items: instance<AppPreferences>().getList<AccountModel>(
                          KeysPreferences.PREFS_KEY_ACCOUNTS,
                          AccountModel.fromJson),
                      itemToString: (value) => value.accountNumber,
                      onChanged: (account) {
                        context
                            .read<InputChequebookCubit>()
                            .setAccount(account);
                      },
                      validator: (value) {
                        if (value == null) {
                          return AppStrings().pleaseSelectSenderAccount;
                        }
                        return null;
                      },
                      hintText: AppStrings().myAccounts,
                    ),
                    SizedBox(height: AppSizeH.s24),
                    BlocBuilder(
                      bloc: chequebookBloc,
                      builder: (context, ChequebookState state) {
                        return GenericDropdownField<PageChequebookModel>(
                            hintText: "page count",
                            validator: (value) {
                              if (context.read<InputChequebookCubit>().page ==
                                  null) {
                                return "please select page count of chequebook";
                              }
                              return null;
                            },
                            isLoading: state.isLoadingPagesChequebook,
                            onChanged: (page) {
                              context
                                  .read<InputChequebookCubit>()
                                  .setPageChequebook(page);
                            },
                            items: state.isLoadingPagesChequebook
                                ? []
                                : state.pagesChequebook,
                            itemToString: (value) => value.value.toString());
                      },
                    ),
                    SizedBox(height: AppSizeH.s24),
                    BlocBuilder(
                      bloc: chequebookBloc,
                      builder: (context, ChequebookState state) {
                        if (state.isLoadingRequestChequebook) {
                          return const LoadingWidget();
                        }

                        return Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.only(end: AppSizeW.s10),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(
                                          ColorManager.secondary)),
                                  onPressed: () {
                                    context.pop();
                                  },
                                  child: Text(AppStrings().back)),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  if (formKey.currentState?.validate() ??
                                      false) {
                                    chequebookBloc.add(
                                        ChequebookEvent.requestChequebook(
                                            accountId: context
                                                    .read<
                                                        InputChequebookCubit>()
                                                    .account
                                                    ?.id ??
                                                0,
                                            pageId: context
                                                    .read<
                                                        InputChequebookCubit>()
                                                    .page
                                                    ?.id ??
                                                0));
                                  }
                                },
                                child: const Text("Create"),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    SizedBox(
                      height: AppSizeH.s24,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
