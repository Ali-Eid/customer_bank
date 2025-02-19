import 'package:flutter/material.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/cache/app_preferences.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/themes/color_manager.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.only(
        topEnd: Radius.circular(AppSizeR.s20),
        bottomEnd: Radius.circular(AppSizeR.s20),
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: ColorManager.primary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: AppSizeR.s30,
                    backgroundColor: ColorManager.white,
                    child: Icon(
                      Icons.person,
                      size: AppSizeSp.s40,
                      color: ColorManager.secondary,
                    ),
                  ),
                  SizedBox(height: AppSizeH.s10),
                  Text('${instance<AppPreferences>().getUserInfo()?.username} ',
                      style: Theme.of(context).textTheme.headlineSmall),
                  Text(
                      '${instance<AppPreferences>().getUserInfo()?.phoneNumber} (${instance<AppPreferences>().getUserInfo()?.type})',
                      style: Theme.of(context).textTheme.displaySmall),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text(AppStrings().home,
                  style: Theme.of(context).textTheme.headlineSmall),
              onTap: () {
                Navigator.pop(context);
                // Navigate to Home Screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.payment_outlined),
              title: Text('Chequebook',
                  style: Theme.of(context).textTheme.headlineSmall),
              onTap: () {
                context.goNamed(RoutesNames.chequebookRoute);
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: Text('Help',
                  style: Theme.of(context).textTheme.headlineSmall),
              onTap: () {
                Navigator.pop(context);
                // Navigate to Help Screen
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: Text('Logout',
                  style: Theme.of(context).textTheme.headlineSmall),
              onTap: () {
                Navigator.pop(context);
                // Perform logout action
              },
            ),
          ],
        ),
      ),
    );
  }
}
