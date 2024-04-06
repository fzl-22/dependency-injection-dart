import 'package:flutter/material.dart';
import 'package:flutter_dependency_injection/core/common/themes/theme.dart';
import 'package:flutter_dependency_injection/core/router/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Faisal's Starter Code Flutter",
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routerConfig,
    );
  }
}
