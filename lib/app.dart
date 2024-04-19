import 'package:flutter/material.dart';
import 'package:calculator/screens/home.dart';
import 'package:calculator/theme/theme.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myAppTheme.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: myAppTheme.darkTheme,
      home: const HomeScreenPage(),
    );
  }
}