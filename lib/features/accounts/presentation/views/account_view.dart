import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';
import 'package:fs_bank/features/accounts/presentation/blocs/my_accounts_bloc/my_accounts_bloc.dart';
import 'package:fs_bank/features/splash/presentation/blocs/app_bloc/app_bloc.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/cache/app_preferences.dart';
import '../../../../core/widgets/custom_error_widget.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  void initState() {
    context.read<MyAccountsBloc>().add(MyAccountsEvent.getMyAccounts(
        customerId:
            (instance<AppPreferences>().getUserInfo()?.customerId ?? 0)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Accounts",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder(
        bloc: context.read<MyAccountsBloc>(),
        builder: (context, MyAccountsState state) {
          return state.map(
            loading: (value) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loaded: (value) {
              return value.accounts.data.isEmpty
                  ? Center(
                      child: Text(
                        "No account",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    )
                  : ListView.builder(
                      padding: EdgeInsets.all(
                        AppSizeW.s16,
                      ),
                      itemCount: value.accounts.data.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: AppSizeH.s8),
                          child: AccountItemWidget(
                              model: value.accounts.data[index]),
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
                              context.read<AppBloc>().user?.customerId ?? 0));
                },
              );
            },
          );
        },
      ),
    );
  }
}

class AccountItemWidget extends StatelessWidget {
  final AccountModel model;
  const AccountItemWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: AlignmentDirectional.centerStart,
      width: double.infinity,
      padding: EdgeInsets.all(AppSizeW.s16),
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.primary, width: AppSizeW.s1),
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(AppSizeR.s8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(model.label,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: ColorManager.primary)),
          SizedBox(height: AppSizeH.s8),
          Text(model.accountNumber,
              style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: AppSizeH.s8),
          Row(
            children: [
              Text("Status:", style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(width: AppSizeW.s4),
              Text(model.status,
                  style: Theme.of(context).textTheme.displayMedium)
            ],
          ),
          SizedBox(height: AppSizeH.s8),
          Row(
            children: [
              Text("Type:", style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(width: AppSizeW.s4),
              Text(model.accountType.name,
                  style: Theme.of(context).textTheme.displayMedium)
            ],
          ),
          SizedBox(height: AppSizeH.s8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Current Balance",
                  style: Theme.of(context).textTheme.titleMedium),
              Text("${model.balance}",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: ColorManager.emerald)),
            ],
          ),
        ],
      ),
    );
  }
}
