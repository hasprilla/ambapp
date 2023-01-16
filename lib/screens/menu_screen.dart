import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/ui_provider.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/custom_header.dart';
import '../widgets/custom_navigatorbar.dart';
import 'home_screen.dart';
import 'rutas_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomHeader(
              title: "Harvey Asprilla",
              subtitle: "Harvey Asprilla",
              isopenicon: false),
          Expanded(
            child: _HomeScreenBody(),
          ),
        ],
      ),
      endDrawer: const CustomDrawer(),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

class _HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;
    switch (currentIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const HomeScreen();
      case 2:
        return const RutasScreen();
      case 3:
        return const HomeScreen();
      case 4:
        return const HomeScreen();
      default:
        return const HomeScreen();
    }
  }
}
