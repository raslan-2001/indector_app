import 'package:flutter/material.dart';
import 'package:indicatorsa_application/features/indicatorsa/presentation/views/widgets/category.dart';

class IndectorViewBody extends StatelessWidget {
  IndectorViewBody({super.key});

  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("Skip"),
            style: const ButtonStyle(
              textStyle: MaterialStatePropertyAll(
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: PageView(
        physics: BouncingScrollPhysics(),
        controller: controller,
        children: [
          Category(controller: controller, image: 'assets/images/step-one.png'),
          Category(controller: controller, image: 'assets/images/step-two.png'),
          Category(
              controller: controller, image: 'assets/images/step-three.png'),
        ],
      ),
    );
  }
}
