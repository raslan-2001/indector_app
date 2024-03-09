import 'package:flutter/material.dart';
import 'package:indicatorsa_application/core/constant.dart';
import 'package:indicatorsa_application/core/router.dart';

void main() {
  runApp(const IndicatorsaApplication());
}

class IndicatorsaApplication extends StatelessWidget {
  const IndicatorsaApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: backgroundColor),
    );
  }
}
