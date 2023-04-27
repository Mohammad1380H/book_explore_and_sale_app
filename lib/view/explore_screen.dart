import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../components/custom_widgets.dart';
import '../res/dimens.dart';
import '../fake_data.dart';
import '../gen/assets.gen.dart';
import '../model/book_model.dart';

// ignore: must_be_immutable
class ExploreScreen extends StatelessWidget {
  ExploreScreen({
    super.key,
  });

  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 1, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: Dimens.xLargSize,
      ),
      Padding(
        padding: EdgeInsets.only(
            right: Dimens.marginSpace, left: Dimens.marginSpace),
        child: SizedBox(
          height: Dimens.height / 5,
          child: PageView.builder(
            controller: pageController,
            itemCount: 3,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 7),
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                            image: Assets.image.rectangle13.provider(),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    left: Dimens.mediumSize,
                    top: Dimens.mediumSize,
                    child: const Text(
                      """Find out the best books to read
when you don’t even know what
to read!!!""",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                      left: Dimens.mediumSize,
                      top: Dimens.largSize * 4,
                      child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll<Color?>(Colors.white)),
                          onPressed: () {},
                          child: const Text("Explore",style: TextStyle(color: Colors.pinkAccent),)))
                ]),
              );
            },
          ),
        ),
      ),
      SizedBox(
        height: Dimens.mediumSize,
      ),
      SmoothPageIndicator(
        controller: pageController,
        count: 3,
        axisDirection: Axis.horizontal,
        effect: ExpandingDotsEffect(
            spacing: 8.0,
            radius: Dimens.mediumSize,
            dotWidth: Dimens.largSize,
            dotHeight: Dimens.largSize,
            paintStyle: PaintingStyle.fill,
            strokeWidth: 1.5,
            dotColor: Colors.orange,
            activeDotColor: Colors.orange),
      )
    ]);
  }
}
