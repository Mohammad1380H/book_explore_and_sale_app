import 'package:book_explore_and_sale_app/components/custom_widgets.dart';
import 'package:book_explore_and_sale_app/constant/dimens.dart';
import 'package:book_explore_and_sale_app/fake_data.dart';
import 'package:book_explore_and_sale_app/model/book_model.dart';
import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: ImageIcon(
          Assets.icon.hamberIcon.provider(),
          color: Colors.black,
        ),
        actions: [
          ImageIcon(
            Assets.icon.minesIcon.provider(),
            color: Colors.black,
          ),
          SizedBox(
            width: Dimens.mediumSize,
          ),
          ImageIcon(
            Assets.icon.notifIcon.provider(),
            color: Colors.black,
          ),
          SizedBox(
            width: Dimens.vLargSize,
          )
        ],
      ),
      body: Column(children: [
        SizedBox(
          height: Dimens.xLargSize,
        ),
        SizedBox(
          height: Dimens.height / 3.8,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: fakeBookList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(
                      index == 0 ? Dimens.marginSpace / 2 : 0,
                      0,
                      Dimens.mediumSize,
                      0),
                  child: newBooksDel(index),
                );
              }),
        ),
        SizedBox(
          height: Dimens.xLargSize,
        ),
        SizedBox(
          width: Dimens.width/1.1,
          height: Dimens.height/2,
          child: GridView.builder(
            
            padding: EdgeInsets.zero,
            itemCount: fakeBookList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // تعداد ستون ها
              mainAxisSpacing: 1, // فاصله بین ردیف ها
              crossAxisSpacing: 1, // فاصله بین ستون ها
            ),
            itemBuilder: (BuildContext context, int index) {
              BookModel book = fakeBookList[index];
              return Container(color: Colors.amber,width: Dimens.height/20,child: newBestBookDel(index, book),);
            },
          ),
        ),
      ]),
    ));
  }

  Row newBestBookDel(int index, BookModel book) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: Dimens.smallSize,
        ),
        Container(
          width: Dimens.width / 4.9,
          height: Dimens.height/6.5,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(fakeBookList[index].imageUrl!).image)),
        ),
        SizedBox(
          width: Dimens.smallSize,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              book.bookName!,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 22, 92, 115)),
            ),
            Text(
              '${book.author}',
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 151, 151, 151)),
            ),
            SizedBox(
              height: Dimens.largSize,
            ),
            SizedBox(
                width: Dimens.width / 6,
                height: Dimens.height / 18,
                child: StarRating(
                    rating: (fakeBookList[index].star! * 5).toInt())),
          ],
        )
      ],
    );
  }

  Column newBooksDel(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: Dimens.height / 5.1,
          width: Dimens.width / 3.4,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(fakeBookList[index].imageUrl!).image)),
        ),
        SizedBox(
          height: Dimens.mediumSize,
        ),
        Text(
          fakeBookList[index].bookName!,
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: Dimens.mediumSize,
        ),
        Row(
          children: [
            SizedBox(
              height: Dimens.smallSize,
              width: Dimens.width / 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: LinearProgressIndicator(
                  backgroundColor: const Color.fromARGB(255, 218, 218, 218),
                  valueColor: const AlwaysStoppedAnimation<Color>(
                      Color.fromARGB(255, 22, 92, 115)),
                  value: fakeBookList[index].star,
                ),
              ),
            ),
            SizedBox(
              width: Dimens.smallSize,
            ),
            Text('${(fakeBookList[index].star! * 100).toInt()}%')
          ],
        ),
      ],
    );
  }
}
