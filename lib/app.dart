import 'package:app_tahhu/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:app_tahhu/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      home: const OnboardingScreen(),
    );
  }
}
