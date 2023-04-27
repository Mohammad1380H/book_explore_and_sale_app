import 'package:book_explore_and_sale_app/res/colors.dart';
import 'package:book_explore_and_sale_app/res/strings.dart';
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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    child: Text(
                      KeyString.textPoster,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                      left: Dimens.mediumSize,
                      top: Dimens.largSize * 4,
                      child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color?>(
                                  Colors.white)),
                          onPressed: () {},
                          child: const Text(
                            "Explore",
                            style: TextStyle(color: Colors.pinkAccent),
                          )))
                ]),
              );
            },
          ),
        ),
      ),
      SizedBox(
        height: Dimens.mediumSize,
      ),
      Center(
        child: SmoothPageIndicator(
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
        ),
      ),
      SizedBox(
        height: Dimens.vLargSize,
      ),
      Padding(
        padding: EdgeInsets.only(
            left: Dimens.marginSpace, bottom: Dimens.mediumSize),
        child: Text(
          KeyString.category,
          style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color:ColorProject.titleBlue),
        ),
      ),
      SizedBox(
          width: double.infinity,
          height: Dimens.height / 30,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: fakeCategoryNames.length,
              itemBuilder: (ctxc, index) => Padding(
                    padding: EdgeInsets.fromLTRB(Dimens.marginSpace, 0, 0, 0),
                    child: Text(fakeCategoryNames[index]),
                  ))),
      Expanded(
        child: GridView.builder(
          padding: EdgeInsets.fromLTRB(
              Dimens.marginSpace, Dimens.largSize, Dimens.marginSpace, 0),
          physics: const BouncingScrollPhysics(),
          itemCount: fakeBookList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 170,
            crossAxisCount: 3, // تعداد ستون ها
            mainAxisSpacing: 10, // فاصله بین ردیف ها
            crossAxisSpacing: 10, // فاصله بین ستون ها
          ),
          itemBuilder: (BuildContext context, int index) {
            BookModel bookModel = fakeBookList[index];
            return newBestBookDel(index, bookModel);
          },
        ),
      ),
    ]);
  }
}

Column newBestBookDel(int index, BookModel book) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: Dimens.width / 5,
        height: Dimens.height / 7,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(fakeBookList[index].imageUrl!).image)),
      ),
      SizedBox(
        width: Dimens.smallSize,
      ),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                book.bookName!,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 22, 92, 115)),
              ),
            ),
            Expanded(
              child: Text(
                '${book.author}',
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 151, 151, 151)),
              ),
            ),
            SizedBox(
                width: Dimens.width / 6,
                height: Dimens.height / 40,
                child: StarRating(
                    rating: (fakeBookList[index].star! * 5).toInt())),
          ],
        ),
      )
    ],
  );
}
