import 'package:flutter/material.dart';
import 'package:grume_food_delivery/component/my_drawer_tile.dart';

import '../Pages/setting_page.dart';
import '../auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).appBarTheme.backgroundColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.menu_book,
                  size: 70,
                ),
                Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          MyDrawerTile(
              icons: Icons.home,
              text: 'H O M E',
              onTop: () => Navigator.pop(context)),
          MyDrawerTile(
            icons: Icons.settings,
            text: 'S E T T I N G S',
            onTop: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SettingPage(),
              ),
            ),
          ),
          const Spacer(),
          MyDrawerTile(
              icons: Icons.logout,
              text: 'L O G O U T',
              onTop: () {
                final authService = AuthService();
                authService.signOut();
              }),
        ],
      ),
    );
  }
}
