import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/auth_provider.dart';
import 'provider/ui_provider.dart';
import 'screens/menu_screen.dart';
import 'screens/register_screen.dart';
import 'themes/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => UiProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "FlutterPhoneAuth",
        initialRoute: 'register',
        routes: {
          'register': (_) =>  const RegisterScreen(),
          'home': (_) => const MenuScreen(),
        },
        theme: AppTheme.lightTheme,
      ),
    );
  }
}
