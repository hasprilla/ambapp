import 'package:flutter/material.dart';

import '../themes/theme.dart';

class CustomHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isopenicon;
  const CustomHeader(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.isopenicon});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        width: double.infinity,
        height: size.height * 0.17,
        color: AppTheme.primary,
        child: Stack(
          children: [
            isopenicon
                ? SafeArea(
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 13),
                      child: Column(
                        children: [
                          Text(title, style: AppTheme.h1),
                          Text(subtitle, style: AppTheme.h2),
                        ],
                      ),
                    ),
                  )
                : SafeArea(
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 20),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.greenAccent[400],
                                  radius: 32,
                                  child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'), //Text
                                ),
                                const SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(title,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                    const SizedBox(height: 7),
                                    Text(subtitle,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  ],
                                ),
                                const Spacer(),
                                CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 37,
                                    child: IconButton(
                                        onPressed: () {
                                          Scaffold.of(context).openEndDrawer();
                                        },
                                        icon: const Icon(
                                          Icons.menu,
                                          size: 40,
                                          color: Colors.white,
                                        )) //Text
                                    ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          ],
        ));
  }
}
