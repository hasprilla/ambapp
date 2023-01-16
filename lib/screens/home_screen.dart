import 'package:flutter/material.dart';

import '../themes/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'LOREM IPSUM DOLOR SIT',
          style: AppTheme.h5,
        ),
      ),
    );
  }
}
