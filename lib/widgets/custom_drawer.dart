import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/ui_provider.dart';
import '../themes/theme.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppTheme.primary,
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.menu,
                  size: 45,
                ),
                SizedBox(width: 10),
                Text(
                  'Menu',
                  style: AppTheme.h1,
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              setState(() {
                uiProvider.selectedMenuOpt = 1;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Rutas'),
            onTap: () {
              setState(() {
                uiProvider.selectedMenuOpt = 2;
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
