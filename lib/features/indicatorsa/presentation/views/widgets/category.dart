import 'package:flutter/material.dart';
import 'package:indicatorsa_application/core/styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.controller,
    required this.image,
  });

  final PageController controller;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 3),
        SizedBox(
          width: MediaQuery.of(context).size.width * .72,
          child: AspectRatio(
            aspectRatio: 2.5 / 2.9,
            child: Image.asset(image),
          ),
        ),
        Spacer(),
        Text(
          "Farm Driving",
          style: Styles.textStyle26,
        ),
        Spacer(),
        SizedBox(
          width: MediaQuery.of(context).size.width * .92,
          child: Opacity(
            opacity: .5,
            child: Text(
              "There are all kinds of equipments to build your farm better harvest",
              style: Styles.textStyle20,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ),
        ),
        Spacer(flex: 6),
        SmoothPageIndicator(
            controller: controller, // PageController
            count: 3,
            effect: const ExpandingDotsEffect(
              dotHeight: 10,
              dotWidth: 15,
              dotColor: Color(0xffC6741C),
              activeDotColor: Color(0xffC6741C),
            ),
            onDotClicked: (index) {}),
        Spacer(),
      ],
    );
  }
}
