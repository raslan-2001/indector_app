import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:indicatorsa_application/core/styles.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    pushToIndectorsPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * double.infinity,
            child: AspectRatio(
              aspectRatio: 2.7 / 3,
              child: Image.asset("assets/images/step-three.png"),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            "Welcome To Our Application",
            style: Styles.textStyle26,
          ),
        ],
      ),
    );
  }

  pushToIndectorsPage() {
    Future.delayed(
      (const Duration(seconds: 5)),
      () {
        GoRouter.of(context).pushReplacement('/indectorsView');
      },
    );
  }
}
