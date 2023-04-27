import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
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
    var textTheme = Theme.of(context).textTheme;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //hi text
      Padding(
        padding:
            EdgeInsets.only(left: Dimens.marginSpace, bottom: Dimens.smallSize),
        child: Text(
          KeyString.hiEmily,
          style: textTheme.bodySmall,
        ),
      ),
      //category
      Padding(
        padding: EdgeInsets.only(
            left: Dimens.marginSpace, bottom: Dimens.mediumSize),
        child: Text(
          KeyString.myLibrary,
          style: textTheme.titleLarge,
        ),
      ),
      //listView
      readingList(),
      //row my wish ...
      Padding(
        padding: EdgeInsets.fromLTRB(
            Dimens.marginSpace, Dimens.smallSize, Dimens.marginSpace, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              KeyString.myWishList,
              style: textTheme.titleMedium,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    elevation: MaterialStatePropertyAll<double>(0),
                    backgroundColor:
                        MaterialStatePropertyAll<Color?>(Colors.white)),
                onPressed: () {},
                child: Text(
                  KeyString.seeMore,
                  style: TextStyle(color: ColorProject.titleOrange),
                )),
          ],
        ),
      ),
      //gridView
      topBookGrid(),
    ]);
  }

  Padding topBookGrid() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          Dimens.marginSpace * 1.5, Dimens.mediumSize, 0, 0),
      child: SizedBox(
        width: Dimens.width / 1.1,
        height: Dimens.height / 2.4,
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: fakeTopBookList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 120,
            crossAxisCount: 2, // تعداد ستون ها
            mainAxisSpacing: 10, // فاصله بین ردیف ها
            crossAxisSpacing: 10, // فاصله بین ستون ها
          ),
          itemBuilder: ( context, index) {
            BookModel book = fakeTopBookList[index];
            return newBestBookDel(index, book);
          },
        ),
      ),
    );
  }

  SizedBox readingList() {
    return SizedBox(
      height: Dimens.height / 3.8,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: fakeBookList.length + 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
                index == 0 ? Dimens.marginSpace / 1 : 0,
                0,
                Dimens.mediumSize,
                0),
            child: redBooks(index),
          );
        },
      ),
    );
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
                  image: Image.asset(book.imageUrl!).image)),
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
                      rating: (fakeTopBookList[index].star! * 5).toInt())),
            ],
          ),
        )
      ],
    );
  }

  Column redBooks(int index) {
    if (index < fakeBookList.length) {
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
          Expanded(
            child: SizedBox(
              width: Dimens.width / 3.4,
              child: Text(
                fakeBookList[index].bookName!,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
              ),
            ),
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
                    value: fakeBookList[index].readingRate,
                  ),
                ),
              ),
              SizedBox(
                width: Dimens.smallSize,
              ),
              Text('${(fakeBookList[index].readingRate! * 100).toInt()}%')
            ],
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Stack(alignment: AlignmentDirectional.center, children: [
            Container(
              height: Dimens.height / 5.1,
              width: Dimens.width / 3.4,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Assets.image.discov.provider())),
            ),
            Column(
              children: [
                 Icon(Icons.add,color: ColorProject.specialGeryTitle),
                Text(
                  KeyString.discoverMore,
                  style: TextStyle(color: ColorProject.specialGeryTitle),
                ),
              ],
            ),
          ]),
        ],
      );
    }
  }
}
