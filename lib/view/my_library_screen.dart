import 'package:book_explore_and_sale_app/res/colors.dart';
import 'package:flutter/material.dart';

import '../components/custom_widgets.dart';
import '../res/dimens.dart';
import '../fake_data.dart';
import '../model/book_model.dart';
import '../res/strings.dart';

class MyLibraryScreen extends StatelessWidget {
  const MyLibraryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                    index == 0 ? Dimens.marginSpace / 1 : 0,
                    0,
                    Dimens.mediumSize,
                    0),
                child: newBooksDel(index),
              );
            }),
      ),
      Padding(
        padding: EdgeInsets.only(left: Dimens.marginSpace),
        child: Text(
          KeyString.myWishList,
          style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color:ColorProject.titleOrange),
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(
            Dimens.marginSpace, Dimens.marginSpace , 0, 0),
        child: SizedBox(
          width: Dimens.width / 1.1,
          height: Dimens.height / 2.3,
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: fakeBookList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 120,
              crossAxisCount: 2, // تعداد ستون ها
              mainAxisSpacing: 10, // فاصله بین ردیف ها
              crossAxisSpacing: 10, // فاصله بین ستون ها
            ),
            itemBuilder: (BuildContext context, int index) {
              BookModel book = fakeBookList[index];
              return newBestBookDel(index, book);
            },
          ),
        ),
      ),
    ]);
  }
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
        height: Dimens.height / 6.5,
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
            SizedBox(
              height: Dimens.mediumSize,
            ),
            Expanded(
              child: Text(
                book.bookName!,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 22, 92, 115)),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: Dimens.smallSize,
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
              height: Dimens.smallSize,
            ),
            Expanded(
                child: StarRating(
                    rating: (fakeBookList[index].star! * 5).toInt())),
          ],
        ),
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
