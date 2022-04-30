import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moni_africa_flutter_test/src/core/assets/images.dart';
import 'package:moni_africa_flutter_test/src/core/helpers/navigator.dart';
import 'package:moni_africa_flutter_test/src/core/styles/themes.dart';
import 'package:moni_africa_flutter_test/src/ui/loan/loans_screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (
        BuildContext context,
        Orientation orientation,
        DeviceType deviceType,
      ) {
        return MultiProvider(
          providers: const [],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Iyenova',
            theme: AppTheme.theme,
            home: const SplashScreen(),
          ),
        );
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      AppNavigator.to(context, const LoansScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.bg)),
        ),
        child: Image.asset(AppImages.logo),
      ),
    );
  }
}
